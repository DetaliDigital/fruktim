<?php
class mvtForms2 {

    public $modx;
    public $initialized = [];
    public $pdoTools;
    public $miniShop2;
    public $SxGeo;
	
    public $form;
    public $tomail;
    public $post;
    public $attach;
    public $chunk_fields;
    public $review = [];
    public $user_data = [
        'name' => '',
        'email' => '',
        'phone' => '',
        'review' => ''
    ];
	
	private $incomplete = 0;
	
    public $version = '1.0.10';
    
    

    function __construct(modX &$modx, array $config = array()) 
	{
        $this->modx =& $modx;
        $this->pdoTools = $this->modx->getService('pdoTools');

        $corePath = $this->modx->getOption('mvtforms2_core_path', $config,
            $this->modx->getOption('core_path') . 'components/mvtforms2/'
        );
        $assetsUrl = $this->modx->getOption('mvtforms2_assets_url', $config,
            $this->modx->getOption('assets_url') . 'components/mvtforms2/'
        );
        $connectorUrl = $assetsUrl . 'connector.php';

        $this->config = array_merge(array(
            'assetsUrl' => $assetsUrl,
            'cssUrl' => $assetsUrl . 'css/',
            'jsUrl' => $assetsUrl . 'js/',
            'imagesUrl' => $assetsUrl . 'images/',
            'connectorUrl' => $connectorUrl,
            'actionUrl' => $assetsUrl . 'action.php',
            'corePath' => $corePath,
            'modelPath' => $corePath . 'model/',
            'chunksPath' => $corePath . 'elements/chunks/',
            'templatesPath' => $corePath . 'elements/templates/',
            'chunkSuffix' => '.chunk.tpl',
            'snippetsPath' => $corePath . 'elements/snippets/',
            'processorsPath' => $corePath . 'processors/',
        ), $config);

        $this->modx->addPackage('mvtforms2', $this->config['modelPath']);
        $this->modx->lexicon->load('mvtforms2:default');
    }
    
    
    
    
    public function initialize($ctx = 'web', array $scriptProperties = array()) 
	{
        if (isset($this->initialized[$ctx])) {
            return $this->initialized[$ctx];
        }

        $this->config = array_merge($this->config, $scriptProperties, array('ctx' => $ctx));

        if ($ctx != 'mgr' AND (!defined('MODX_API_MODE') OR !MODX_API_MODE)) {}
        
        $config = $this->pdoTools->makePlaceholders($this->config);
        
        $data = json_encode([
            'actionUrl' => $this->config['actionUrl'],
            'assetsUrl' => $this->config['assetsUrl'] 
        ], true);
        $this->modx->regClientStartupScript('<script type="text/javascript">mvtForms2Config = '.$data.';</script>', true);
        
        $css = trim($this->modx->getOption('mvtforms2_frontend_css'));
        if (!empty($css) && preg_match('/\.css$/i', $css)) {
            $this->modx->regClientCSS(str_replace($config['pl'], $config['vl'], $css.'?v='.$this->version));
        }
            
        $this->modx->regClientStartupScript('
            <script type="text/javascript">
		!window.jQuery && document.write(\'<script src="'.$this->config['assetsUrl'].'js/web/jquery-3.4.1.min.js"><\/script>\');
            </script>',true);
        
        $js = trim($this->modx->getOption('mvtforms2_frontend_js'));
        if (!empty($js) && preg_match('/\.js/i', $js)) {
            $this->modx->regClientScript(str_replace($config['pl'], $config['vl'], $js.'?v='.$this->version));
        }
        
        $initialize = true;
        $this->initialized[$ctx] = $initialize;

        return $initialize;
    }
	
	
	 
	
    public function process()   
	{
        $this->post = $this->filter(@$_POST);
		
        if($_form = $this->modx->getObject('mvtForms2Forms', ['code' => $this->post['form']])) {
			
            $this->form = $_form->toArray();
            $this->form['px'] = $this->post['form'].'_';
			
            if(!$check = $this->check($_form)) {
                return $this->ajaxResponse(true, 'error', ['message' => $this->modx->lexicon('mvtforms2_front_token_error')]);
            }
            else {
                if(!is_array($check)) {
                    $this->run($_form);
                }
                else {
                    return $this->ajaxResponse(true, 'error', ['message' => $this->modx->lexicon('mvtforms2_front_check_error'), 'fields' => $check]);
                }
            }
			
        }
        else {
            return $this->ajaxResponse(true, 'error', ['error' => 'Форма не определена']);
        }
    }
    
    
    
    
    /** фильтрация переменных */
    private function filter($data) 
	{
        $a = array('[', ']', '`', '{', '}');
        $b = array('&#91;', '&#93;', '&#96;', '&#123;', '&#125;');
        foreach ($data as $k => $v) {
            $k = str_replace($a,$b,$k);
            if(is_array($v)) {
                $this->filter($v);
            }
            else {
                $data[$k] = str_replace($a,$b,$v);
            }
        }
        return $data;
    }
    
    
    
    
    
    /** проверка обязательных полей */
    private function check($_form) 
	{		
		if($this->modx->getOption('mvtforms2_use_token')) {
			if(!empty($_SESSION['mvtforms']['token'][$this->form['code']])) {
				if($_SESSION['mvtforms']['token'][$this->form['code']] != $this->post['token']) {
					return false;
				}
			}
			else {
				return false;
			}
		}
        
        $out = 'ok';
        $required = explode(',',$this->form['required']);
        $asi_email = $asi_phone = '';
		
        if(count($required) > 0) {
            foreach ($required as $field) {
                $fld = $this->form['px'].$field;
                if(!isset($this->post[$fld]) || empty($this->post[$fld])) {
                    $errors[] = $fld;
                }
                else {
                    if($field == 'email') {
                        if (!filter_var($this->post[$fld], FILTER_VALIDATE_EMAIL)) {
                            $errors[] = $fld;
                        }
                        else {
                            $this->user_data['email'] = $asi_email = $this->post[$fld];
                        }
                    }
                    if($field == 'name') {
                        $this->user_data['name'] = $this->post[$fld];
                    }
                    if($field == 'review') {
                        $this->user_data['review'] = $this->post[$fld];
                    }
                }
            }
        }
        
        if(!empty($this->post[$this->form['px'].'product_options'])) {
            $a = array('&#123;', '&#125;');
            $b = array('{', '}');
            $options = str_replace($a,$b,$this->post[$this->form['px'].'product_options']);      
            $this->post[$this->form['px'].'product_options'] = json_decode($options,1);
        }
		
		$errors_ = $this->modx->invokeEvent('MvtFormsAfterCheck', [
			'errors' => $errors,
			'data' => $this->post, 
			'form' => $this->form
		]);
		

		if(isset($errors_[0])) {
		    if(is_array($errors_[0])) {
		        $errors = $errors_[0];
		    }
		}
		
		
        if (isset($errors)) {
            
            if(!empty($this->post[$this->form['px'].'phone'])) {
                $asi_phone = $this->post[$this->form['px'].'phone'];
            }

        	if($this->modx->getOption('mvtforms2_allow_submission_incomplete') == 1 && $this->form['type'] == 1 && !empty($this->form['allow_incomplete'])) {
    			if(!empty($asi_email) || !empty($asi_phone)) {
    				$this->incomplete = 1;
    				$this->run($_form);
    			}
    		}
		
            return $errors;
        }
        return $out;
    }
    



    private function setAttach() 
	{
	    $attach = $files = [];
	    
	    $core_path = $this->modx->getOption('core_path');
	    
	    if(isset($_FILES['file']['name']) && count($_FILES['file']['name']) > 0) {

            $fileTypes = explode(',',$this->modx->getOption('mvtforms2_allowed_file'));
            $count = 0;
            foreach ($_FILES['file']['type'] as $k => $v) {
                if(is_scalar($v)) {
                    if(!empty($v) && in_array($v, $fileTypes)) {
                        $files[] = array(
                            'name' => $_FILES['file']['name'][$k],
                            'tmp_name' => $_FILES['file']['tmp_name'][$k]
                        );
                        $count++;
                    }
                }
            }

            if(!empty($files)) {
                
                if(count($files) == 1) {
                    $temp = explode(".", $files[0]['name']);
                    $upload_file = $this->config['corePath'].'temp/'.round(microtime(1)).'.'.end($temp);
                    if (move_uploaded_file($files[0]['tmp_name'], $upload_file)) {
                        $attach['temp'] = $upload_file;
                    }
                }
                else {
                    $zip = new ZipArchive;
                    $zip_file = $this->config['corePath'].'temp/'.substr(md5(rand()), 0, 7).'.zip';
                    if ($zip->open($zip_file, ZipArchive::CREATE) === TRUE) {
                        foreach ($files as $file) {
                            $zip->addFile($file['tmp_name'], $file['name']);
                        }
                        $attach['temp'] = $zip_file;
                        $zip->close();
                    }
                }
                
                if(!empty($attach['temp'])) {

                    $source_id = $this->modx->getOption('mvtforms2_source');
                    if(!empty($source_id) && $this->modx->getOption('mvtforms2_saveformfiles')) {
                        $source = $this->modx->getObject('sources.modMediaSource', $source_id);
                        $source->initialize();
                        $properties = $source->getProperties();

                        $dir = date('dmY').'/';
                        $fn = basename($attach['temp']);

                        $source->createContainer($dir, '/');
                        $upload = $source->createObject($dir, $fn, file_get_contents($attach['temp']));

                        if (!$upload) {
                            $this->modx->log(1,$this->modx->lexicon('mvtforms2_files_err_save') . ': ' . print_r($source->getErrors(), 1));
                        }
                        else {
							
                            $attach['save'] = [
                                'path' => $this->modx->getOption('base_path').ltrim($properties['basePath']['value'],'/').$dir.$fn,
                                'url' => $source->getObjectUrl($dir.$fn),
                                'count' => $count
                            ];
                        }
                    }
                    
                    @unlink($attach['temp']);
                }
            }
        }
				
        $this->attach = $attach;
	    return true;
    }
    
    
    
    
    private function run($_form) 
    {      
        $sn = $this->modx->getOption('site_name');
	    $sd = $this->modx->getOption('emailsender');

	    if(!empty($this->post[$this->form['px'].'resource'])) {
            if($resource = $this->modx->getObject('modResource',$this->post[$this->form['px'].'resource'])) {
		        $this->form['resource'] = $this->post[$this->form['px'].'resource'];
            }
        }
		
	    $this->getUser();
	    $this->setAttach();
		
	    $nfd = $this->modx->invokeEvent('MvtFormsOnBeforeFormSend', [
			'data' => $this->post, 
			'form' => $this->form,
			'files' => $this->attach
		]);
		
		if(!empty($nfd)) {
            if(is_array($nfd)) {
                foreach($nfd as $odata) {
                    if(!empty($odata['data'])) {
                        if(is_array($odata['data'])) {
                            $this->post = array_merge($this->post, $odata['data']);
                        }
                    }
                    if(!empty($odata['form'])) {
                        if(is_array($odata['form'])) {
                            $this->form = array_merge($this->form, $odata['form']);
                        }
                    }
                }
            }
        }
		
        $this->tomail = [
            'to' => $this->form['email'],
            'site_name' => $sn,
            'from_name' => (!empty($this->post[$this->form['px'].'name'])) ? $this->post[$this->form['px'].'name'] : $sn,
            'sender' => $sd,
            'reply_to' => (!empty($this->post[$this->form['px'].'email'])) ? $this->post[$this->form['px'].'email'] : $sd,
            'subject' => $this->form['name']
	    ];
		
        $message = $this->prepareMessage($this->modx->getOption('mvtforms2_tpl_message'),true);
		
	    if(!empty($message)){
            
            $products = [];
            if($this->form['type'] == 2) {
                if(!empty($this->post[$this->form['px'].'product'])) {
                    if($product = $this->modx->getObject('msProduct',$this->post[$this->form['px'].'product'])) {
                        $id = $product->get('id');
                        $price = $product->get('price');
                        $options = $this->post[$this->form['px'].'product_options'];

                        $products['products'][] = [
                            'id' => $id,
                            'weight' => $product->get('weight'),
                            'name' => $product->get('pagetitle'),
                            'count' => $this->post[$this->form['px'].'product_count'] ?: 1,
                            'price' => $this->getPrice($id,$price,$options),
                            'options' => $options
                        ];
                    }
                }
            }
            
            $response_data = [
                'code' => $this->form['code'],
                'answer' => $this->form['success']
            ];
            
            if(!empty($this->form['redirect'])) {
                if ($this->modx->getCount('modResource', ['id' => $this->form['redirect'], 'published' => true, 'deleted' => false])) {
                    $response_data['redirect'] = $this->modx->makeUrl($this->form['redirect']);
                }
            }
                
                
            $this->saveFormData($products);

            # заказ в 1 клик
            if($this->form['type'] == 2 || $this->form['type'] == 3) {
				
				$ms2_path = $this->modx->getOption('core_path').'components/minishop2/model/minishop2/';
				if(is_dir($ms2_path)) {
					$this->miniShop2 = $this->modx->getService('miniShop2');
					if (!($this->miniShop2 instanceof miniShop2)) {
						$this->modx->log(1,'mvtForms2: error creating order [class minishop2 not defined]');
						return $this->ajaxResponse(true, 'send_error', ['error' => $this->modx->lexicon('mvtforms2_form_send_error')]);
					}
					else {
						$this->miniShop2->initialize($this->modx->context->key, ['json_response' => true]);
						
						if(!$order = $this->createOrder($products)) {
							$this->modx->log(1,'mvtForms2: error creating order ['.print_r($this->post,1).']');
							return $this->ajaxResponse(true, 'send_error', ['error' => $this->modx->lexicon('mvtforms2_form_send_error')]);
						}
						
						if(!empty($response_data['redirect'])) {
							$response_data['redirect'] .= '?msorder='.$order['orderId'];
						}
						
						$this->formSendCounter($_form);
						
						return $this->ajaxResponse(true, 'send', $response_data);
					}
				}
				else {
					$this->modx->log(1,'mvtForms2: error creating order [class minishop2 not defined]');
					return $this->ajaxResponse(true, 'send_error', ['error' => $this->modx->lexicon('mvtforms2_form_send_error')]);
				}
            }
  
		# отправка сообщений
		if($this->send($message)) {
			
			if($this->incomplete == 0) {
			    
    			$this->formSendCounter($_form);
    
    		    $this->modx->invokeEvent('MvtFormsOnFormSubmit', ['data' => $this->post, 'form' => $this->form]);
    
                    # подтверждение
                    if($this->form['confirm'] && !empty($this->post[$this->form['px'].'email'])) {
                        if($chunk = $this->modx->getOption('mvtforms2_tpl_message_user')) {
                            if(!empty($chunk)) {
                                $this->modx->lexicon->load('mvtforms2:default');
                                $this->tomail = [
                                    'to' => $this->post[$this->form['px'].'email'],
                                    'site_name' => $sn,
                                    'from_name' => $sn,
                                    'sender' => $sd,
                                    'reply_to' => $sd,
                                    'subject' => $this->modx->lexicon('mvtforms2_message_user_subject')
                                ];
                                $message = $this->prepareMessage($chunk);
                                                            
                                if(!$this->send($message)) {
                                    $this->modx->log(1,'mvtForms2: error sending a message to the user ['.$this->post[$this->form['px'].'email'].']');
                                }
                            }
                        }
                    }
    
    				return $this->ajaxResponse(true,'send',$response_data);
			    }
			    return;
            }
	    }
		
        return $this->ajaxResponse(false, 'send_error', ['error' => $this->modx->lexicon('mvtforms2_form_send_error')]);
    }
	
	
	
	
	private function formSendCounter($_form)
	{		
	    $counter = $_form->get('counter');
		$_form->set('counter',$counter+1);
		$_form->save();
	}
	
	
	
    private function prepareMessage($chunk,$send_cart = false) 
	{
	    $message = '';

	    $cart = [];
        if($send_cart && $this->modx->getOption('mvtforms2_send_cart') == 1 && isset($_SESSION['minishop2']['cart'])) {
            foreach ($_SESSION['minishop2']['cart'] as $item) {
                if($product = $this->modx->getObject('msProduct', $item['id'])) {
                    $cart[] = array(
                        'price' => $item['price'],
                        'count' => $item['count'],
                        'name' => $product->get('pagetitle')
                    );
                }
            }
        }

        $message = '<h3>'.$mailSubject.' (сайт: '.$siteName.')</h3>';
        $fields = explode(',',$this->form['fields']);
		
        $this->chunk_fields = [];
		
		if($this->incomplete == 1) {
			$fn = $this->modx->getOption('mvtforms2_incomplete_comment');
			if(!empty($fn)) {
				$this->chunk_fields['!'] = $fn;
				$this->tomail['subject'] .= ' '.$fn;
			}
		}
		
		
        foreach ($fields as $field) {
            $item = explode(':',$field);
            if(isset($this->post[$this->form['px'].$item[0]])) {    
                $el = $this->post[$this->form['px'].$item[0]];
                if(is_array($el)) {
                    $message .= '<p>'.$item[1].':<br>'; 
                    $add = '';
                    foreach($el as $kf => $vf) {
                        $add .= $vf.', '; 
                    }
                    if(!empty($add)) {
                        $add = substr($add,0,-2);
                    }
                    
                    $message .= $add.'</p>'; 
                    $this->chunk_fields[$item[1]] .= $add;
                }
                else {
                    $message .= '<p>'.$item[1].': '.$el.'</p>';
                    $this->chunk_fields[$item[1]] = $el;
                }
            }
        }
		
        if(!empty($chunk)) {
            $message = $this->pdoTools->getChunk($chunk, [
				'form' => $this->form['name'],
				'fields' => $this->chunk_fields,
				'cart' =>$cart
            ]);
        }
		
		return $message;
    }
    
    
    
    
    
    private function createOrder($products) 
	{
        
        $this->miniShop2->order->clean();
        $order_num = $this->getOrderNum($this->modx->getOption('mvtforms2_product_page_number_prefix').$this->miniShop2->order->getNum());
        
        $fields = ['receiver' => '','email' => '','phone' => '','comment' => ''];
        foreach($fields as $k => $v) {
            if($k == 'receiver' && !empty($this->post[$this->form['px'].'name'])) {
                $fields[$k] = $this->post[$this->form['px'].'name'];
            }
            else {
                if(!empty($this->post[$this->form['px'].$k])) {
                    $fields[$k] = $this->post[$this->form['px'].$k];
                }
            }
            $this->miniShop2->order->add($k, $fields[$k]); 
        }
        
        $order_data = [
            'user_id' => ($this->form['user_id'] != 0) ? $this->form['user_id'] : $this->miniShop2->getCustomerId(),
            'delivery_cost' => 0,
            'createdon' => date('Y-m-d H:i:s'),
            'delivery' => 0,
            'payment' => 0,
            'status' => 0,
            'context' => $this->miniShop2->config['ctx'],
            'weight' => 0,
            'cost' => 0,
            'cart_cost' => 0
        ];
        
        switch ($this->form['type']) {
            
            case 2:
                
                $order_data['num'] = $this->getOrderNum($this->modx->getOption('mvtforms2_product_page_number_prefix').$this->miniShop2->order->getNum());
                
                foreach ($products['products'] as $item){
                    $order_data['weight'] += $item['weight'];
                    $order_data['cart_cost'] += $item['price'] * $item['count'];
                }
                $order_data['cost'] = $order_data['cart_cost'];
                
                $order = $this->modx->newObject('msOrder');
                $order->fromArray($order_data);
        
                $order_products = [];
                foreach ($products['products'] as $item) {
                    $order_product = $this->modx->newObject('msOrderProduct');
                    $order_product->fromArray([
                        'product_id' => $item['id'],
                        'name' => $item['name'],
                        'count' => $item['count'],
                        'price' => $item['price'],
                        'weight' => $item['weight'],
                        'cost' => $item['price'] * $item['count'],
                        'options' => $item['options']
                    ]);
                    $order_products[] = $order_product;
                }
                $order->addMany($order_products);

            break;
            
            case 3:
                
                $order_data['num'] = $this->getOrderNum($this->modx->getOption('mvtforms2_cart_number_prefix').$this->miniShop2->order->getNum());
                
                $cart_status = $this->miniShop2->cart->status();
                $order_data['weight'] = $cart_status['total_weight'];
                $order_data['cost'] = $order_data['cart_cost'] = $cart_status['total_cost'];

                $order = $this->modx->newObject('msOrder');
                $order->fromArray($order_data);

                $order_products = [];
                $cart = $this->miniShop2->cart->get();
                foreach ($cart as $v) {
                    if ($tmp = $this->modx->getObject('msProduct', $v['id'])) {
                        $name = $tmp->get('pagetitle');
                    } else {
                        $name = '';
                    }
                    $product = $this->modx->newObject('msOrderProduct');
                    $product->fromArray(array_merge($v, [
                        'product_id' => $v['id'],
                        'name' => $name,
                        'cost' => $v['price'] * $v['count'],
                    ]));
                    $order_products[] = $product;
                }
                $order->addMany($order_products);

            break;
        }

        $address = $this->modx->newObject('msOrderAddress');
        $address->fromArray(array_merge([
            'createdon' => date('Y-m-d H:i:s')
            ], $fields));
        $order->addOne($address);
        
        if ($order->save()) {
            if($this->form['type'] == 3) {
                $this->miniShop2->cart->clean();
            }
            $this->miniShop2->order->clean();
            $this->miniShop2->invokeEvent('msOnCreateOrder', array(
                'msOrder' => $order,
                'order' => $this->miniShop2->order,
            ));
            $this->miniShop2->changeOrderStatus($order->get('id'), 1);
            return ['orderNum' => $order->get('num'), 'orderId' => $order->get('id')];
        }
        
        return false;
    }
    
    
    
    
    
    
    
	
    public function getUser() 
	{
		$user_id = 0;
		$email = $this->post[$this->form['px'].'email'];
		$phone = $this->post[$this->form['px'].'phone'];
		
		if(!empty($email)) {
				if($user = $this->modx->getObject('modUserProfile',['email' => $email])) {
			$this->form['user_id'] = $user->get('internalKey');
			return true;
				}
		}
			
		if(!empty($phone)) {
            $p = $this->clearPhone($phone);
            
            $this->user_data['phone'] = $this->post[$p];
            
            $q = $this->modx->newQuery('modUserProfile');
            $list = $this->modx->getIterator('modUserProfile', $q);
            $sf = array('mobilephone','phone');
       
            foreach ($list as $i) {
				foreach ($sf as $p_) {
					if($phone = $i->get($p_)) {
						if(!empty($phone)) {
							$phone = $this->clearPhone($phone);
							if($p == $phone) {
								$user_id = $i->get('internalKey');
								$this->form['user_id'] = $i->get('internalKey');
								return true;
							}
						}
					}
				}
            }
        }
		$this->form['user_id'] = $user_id;
		return true;
    }
	
	

    
    public function clearPhone($p) 
	{
        $p = preg_replace('/[^\d]/','',$p);
        if(strlen($p) == 11) $p = substr($p,1);
        return $p;
    }

    
    
    private function getOrderNum($number) 
	{
        $num = 0;
        
        $c = $this->modx->newQuery('msOrder');
        $c->where(array('num' => $number));
        $c->select('num');
        $c->limit(1);
        if ($c->prepare() && $c->stmt->execute()) {
            $num = $c->stmt->fetchColumn();
        }
        if (empty($num)) {
           return $number;
        }
        $num = explode('/', $num);
        $num = $num[0]. '/' . ($num[1] + 1);

        return $num;
    }
    
    
    
    private function loadSxGeo() 
	{
		$sxgeodata = $this->modx->getOption('base_path').$this->modx->getOption('mvtforms2_sxgeo_dat');
		if(file_exists($sxgeodata)) {
			if (!is_object($this->SxGeo) OR !($this->SxGeo instanceof SxGeo)) {
				$sypexgeoClass = $this->modx->loadClass('SxGeo', $this->config['modelPath'].'mvtforms2/sxGeo/', true, true);
				if ($sypexgeoClass) {
					$this->SxGeo = new $sypexgeoClass($sxgeodata);
				}
				else {
					$this->modx->log(1,'mvtForms2: can not load class SxGeo ['.$this->config['modelPath'].'mvtforms2/sxGeo/]');
				}
			}
		}
		else {
			$this->modx->log(1,'mvtForms2: file not found ['.$sxgeodata.']');
		}
        return !empty($this->SxGeo) AND $this->SxGeo instanceof SxGeo;
    }
    
    
    
    
    private function getDadata($token) 
	{
        $result =[];
        if ($ch = curl_init('https://suggestions.dadata.ru/suggestions/api/4_1/rs/detectAddressByIp?ip='.$_SERVER['REMOTE_ADDR']))  {
            curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Accept: application/json',
		'Content-Type: application/json',
                'Authorization: Token '.$token
            ]);
			$result = json_decode(curl_exec($ch),1);
            curl_close($ch);
            if(!empty($result['location']['data']['city'])) {
                return $result['location']['data'];
            }	
        }
        return false;
    }
    
    
    
    
    public function getGeoData() 
	{
        $dadataToken = $this->modx->getOption('mvtforms2_dadata_token');
        $geoData = [];
        if(!empty($dadataToken)) {
            if($geo = $this->getDadata($dadataToken)) {
                $geoData = [
                    'city' => $geo['city_with_type']
                    ,'region' => $geo['region_with_type']
                    ,'street' => ''
                    ,'building' => ''
                ];
            }
        }
        else {
            if (!$this->SxGeo) {
                $this->loadSxGeo();
            }
                
            if ($this->SxGeo) {
                $geo = $this->SxGeo->getCityFull($_SERVER['REMOTE_ADDR']);
                if(!empty($geo['city']['name_ru'])) {
                    $geoData = [
                        'region' => $geo['region']['name_ru']
                        ,'city' => $geo['city']['name_ru']
                        ,'street' => ''
                        ,'building' => ''
                    ];
                }
 
            }
            else {
                $this->modx->log(1,'mvtForms2: error load sxGeo class');    
            }
        }
        return $geoData;
    }
    
    
		
    
    private function saveFormData($products = []) 
	{
        if(!$this->modx->getOption('mvtforms2_saveformdata')) return;
        $gd = '';
		if(!empty($_SESSION['mvtForms2']['geo'])) {
			foreach ($_SESSION['mvtForms2']['geo'] as $k => $v) {
				if(!empty($v)) {
					$gd .= $v.', ';
				}
			}
			if(!empty($gd)) {
				$gd = substr($gd,0,-2);
			}
		}
				
		$files = (!empty($this->attach['save']['url'])) ? json_encode($this->attach['save']) : '';
        
		$email = '';
        if(!empty($this->user_data['email'])) {
            $email = $this->user_data['email'];
        }
        else {
            if($this->form['user_id'] != 0) {
                if($user = $this->modx->getObject('modUser', $this->form['user_id'])) {
                    $profile = $user->getOne('Profile');
                    $email = $profile->get('email');
                }
            }
        }
        
        $data = [
            'form_id' =>  $this->form['id'],
            'form_type' =>  $this->form['type'],
            'resource_id' =>  $this->form['resource'],
            'user_id' =>  $this->form['user_id'],
            'form_data' => json_encode(array_merge($this->chunk_fields,$products)),
            'name' => $this->user_data['name'],
            'email' => $email,
            'phone' => $this->user_data['phone'],
            'review' => $this->user_data['review'],
            'form_files' => $files,
            'geo_data' => $gd,
            'added' => date('Y-m-d H:i:s')
        ];
                
		
        $logRec = $this->modx->newObject('mvtForms2FormsData');
        $logRec->fromArray($data);
        $logRec->save();
    }
    
    
    
    
    
    private function getPrice($id,$price,$options) 
	{
        $service_path = $this->modx->getOption('core_path').'components/msoptionsprice/model/msoptionsprice/';
        if(is_dir($service_path)) {
            $msoptionsprice = $this->modx->getService('msoptionsprice', 'msoptionsprice', $service_path, []);
            if (is_object($msoptionsprice)) {
                
                $msoptionsprice->initialize('web');
                $msoptionsprice->config['processorsPath'] = $msoptionsprice->config['processorsPath'] . 'web/';
                if ($response = $msoptionsprice->runProcessor('modification/get', [
                       'id' => $id,
                       'options' => $options
                    ])) {
                    $data = json_decode($response,1);
                    $modification = $data['data']['modification'];
                    if(!empty($modification['price'])) {
                        return $modification['price'];
                    }
                }
            }
        }
        return $price;
    }
    
    
    
    
    
    private function send($message) 
	{  
        $this->modx->getService('mail', 'mail.modPHPMailer');
        $this->modx->mail->set(modMail::MAIL_BODY,$message);
        $this->modx->mail->set(modMail::MAIL_FROM,$this->tomail['sender']);
        $this->modx->mail->set(modMail::MAIL_FROM_NAME,$this->tomail['from_name']);
        $this->modx->mail->set(modMail::MAIL_SENDER,$this->tomail['sender']);
        $this->modx->mail->set(modMail::MAIL_SUBJECT,$this->tomail['subject']);
        
        $ml = explode(',', $this->tomail['to']);
        $mailTo = $ml[0];
        
        $this->modx->mail->address('to',$mailTo);
        if(count($ml)>1) {
            foreach ($ml as $k=>$v) {
                if($k>0) {
                    $this->modx->mail->address('to',$v);
                }
            }
        }
        $this->modx->mail->address('reply-to',$this->tomail['reply_to']);
		if(!empty($this->attach['save']['path'])) {
            $this->modx->mail->attach($this->attach['save']['path']);
        }       
        $this->modx->mail->setHTML(true);
            
        if (!$this->modx->mail->send()) {
            $this->modx->log(1,$modx->mail->mailer->ErrorInfo);
            return false;
        }

        $this->modx->mail->reset();         
        return true;
    }
	
	
    
    
	
    private function clear($attach) 
	{
        if(is_array($attach)) {
            foreach ($attach as $k=>$v) {
                @unlink($v);
            }
        }
    }
	
    
    
    public function getForm($formID, $properties=[]) 
	{
        if($form = $this->modx->getObject('mvtForms2Forms', ['code' => $formID])) { 
            $chunk = $form->get('chunk');
            if(!empty($chunk)) {
                
                $token = $formID.':'.md5($formID.time());
                $_SESSION['mvtforms']['token'][$formID] = $token; 
                
                $fname = (!empty($properties['name'])) ? $properties['name'] :  $form->get('name');
                $fdescription = (!empty($properties['description'])) ? $properties['description'] :  $form->get('description');
                
                $placeholders = [
                    'formID' => $formID,
                    'token' => $token,
                    'formName' => $fname,
					'formDescription' => $fdescription
                ];
                
                $fcontent = $this->pdoTools->getChunk($chunk, $placeholders);
                
                /*if($form->get('type') == 4) {
                    $adl = $this->modx->getOption('base_path').'assets/components/mvtforms2/css/web/default.css';
                    if(file_exists($adl)) {
                        $fcontent = '<style>'.file_get_contents($adl).'</style>'.$fcontent;
                    }
                }*/
                
                return $fcontent;
            }
        }
        return '';
    }
	
	
    
    private function ajaxResponse($success = true, $message = '', array $data = array()) 
	{
		$response = array(
            'success' => $success,
            'message' => $message,
			'form' => $this->form['code'],
            'data' => $data,
		);
		exit(json_encode($response));
    }
	
}