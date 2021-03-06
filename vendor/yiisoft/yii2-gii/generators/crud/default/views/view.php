<?php

use yii\helpers\Inflector;
use yii\helpers\StringHelper;

/* @var $this yii\web\View */
/* @var $generator yii\gii\generators\crud\Generator */

$urlParams = $generator->generateUrlParams();

echo "<?php\n";
?>

use awesome\backend\widgets\AwsBaseHtml;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model <?= ltrim($generator->modelClass, '\\') ?> */

$this->title = $model-><?= $generator->getNameAttribute() ?>;
$this->params['breadcrumbs'][] = ['label' => <?= $generator->generateString(Inflector::pluralize(Inflector::camel2words(StringHelper::basename($generator->modelClass)))) ?>, 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row <?= Inflector::camel2id(StringHelper::basename($generator->modelClass)) ?>-view">
    <div class="col-md-12">
        <div class="portlet light portlet-fit portlet-datatable bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-list font-green"></i>
                    <span class="caption-subject font-green sbold uppercase">
                        <?= "<?= " ?> AwsBaseHtml::encode($this->title) ?>
                    </span>
                </div>
                <div class="actions">
                    <?= "<?= " ?>
                    AwsBaseHtml::a(<?= $generator->generateString('Update') ?>, ['update', <?= $urlParams ?>],
                        ['class' => 'btn btn-transparent green btn-outline btn-circle btn-sm'])
                    ?>
                    <?= "<?= " ?>
                    AwsBaseHtml::a(<?= $generator->generateString('Delete') ?>, ['delete', <?= $urlParams ?>], [
                        'class' => 'btn btn-transparent red btn-outline btn-circle btn-sm',
                        'data' => [
                            'confirm' => <?= $generator->generateString('Are you sure you want to delete this item?') ?>,
                            'method' => 'post',
                        ],
                    ])
                    ?>
                </div>
            </div>
            <div class="portlet-body">
                <?= "<?= " ?>DetailView::widget([
                'model' => $model,
                'attributes' => [
                <?php
                if (($tableSchema = $generator->getTableSchema()) === false) {
                    foreach ($generator->getColumnNames() as $name) {
                        echo "            '" . $name . "',\n";
                    }
                } else {
                    foreach ($generator->getTableSchema()->columns as $column) {
                        $format = $generator->generateColumnFormat($column);
                        echo "            '" . $column->name . ($format === 'text' ? "" : ":" . $format) . "',\n";
                    }
                }
                ?>
                ],
                ]) ?>
            </div>
        </div>
    </div>
</div>
