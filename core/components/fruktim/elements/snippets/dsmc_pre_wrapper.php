<?php

if (empty($snippet)) {
    $snippet = 'msProducts';
}

$modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
return $modx->runSnippet($snippet , $scriptProperties);