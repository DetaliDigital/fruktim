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
        break;
}