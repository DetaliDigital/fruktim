<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'pdoToolsOnFenomInit':
        /** @var Fenom $fenom
        Мы получаем переменную $fenom при его первой инициализации и можем вызывать его методы.
        Модификатор получает значение ТВ по его название.
         */
        $fenom->addModifier('tv', function ($input) use ($modx) {
            if ($input) {
                return $modx->resource->getTVValue($input);
            }
        });
        $fenom->addModifier('tv_superselect_get', function ($input,$option) use ($modx) {
            if ($input) {
                $value = explode(',' , $modx->resource->getTVValue($input));
                $value = (preg_replace("/[^,.0-9]/", '', $value[0]));
                $row = resource($value)->get($option);
                return $row;
            }
        });

        $fenom->addModifier('dsmc_parent_child', function ($input) use ($modx) {

            $id = str_replace('-', '', $input);
            $ids = $modx->getChildIds($id, '6', ['context' => 'web']);

            $data = array();

            $q = $modx->newQuery('modResource', ['id:IN' => $ids, 'isfolder' => true, 'published' => true, 'deleted' => false]);
            $q->select('id');

            if ($q->prepare() && $q->stmt->execute()) {
                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {
                    $data[] = '-' . $row['id'];
                }
            }

            $output = implode(',' , $data);

            return $input . ',' . $output;

        });
        break;
}