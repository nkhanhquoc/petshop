<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pettype */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Pettype',
]) . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Pettypes'), 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update') . ' ' . $model->name;
?>
<div class="row pettype-update">
    <div class="col-md-12">

    <?= $this->render('_form', [
        'model' => $model,
        'title' => $this->title
    ]) ?>

    </div>
</div>
