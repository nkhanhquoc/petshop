<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Pettype;

/* @var $this yii\web\View */
/* @var $model backend\models\PetSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pets-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'type')->dropDownList(
            $model->getAllPettype(),
            ['prompt'=>'Tất cả']
            ) ?>

    <?= $form->field($model, 'weight') ?>

    <?= $form->field($model, 'age') ?>

    <?php // echo $form->field($model, 'haircolor') ?>

    <?php // echo $form->field($model, 'note') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
