<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pets */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Pets',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Pets'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row pets-create">
    <div class="col-md-12">
        <?= $this->render('_form', [
            'model' => $model,
            'title' => $this->title
        ]) ?>
    </div>
</div>
