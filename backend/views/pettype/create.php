<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pettype */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Pettype',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Pettypes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row pettype-create">
    <div class="col-md-12">
        <?= $this->render('_form', [
            'model' => $model,
            'title' => $this->title
        ]) ?>
    </div>
</div>
