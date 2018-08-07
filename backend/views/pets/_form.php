<?php

use awesome\backend\widgets\AwsBaseHtml;
use yii\widgets\ActiveForm;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pets */
/* @var $title string */
/* @var $form AwsActiveForm */
?>

<?php  $form = ActiveForm::begin(); ?>

    <div class="portlet light portlet-fit portlet-form bordered pets-form">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-paper-plane font-green"></i>
                <span class="caption-subject font-green sbold uppercase">
                <?=  $title ?>
                </span>
            </div>
            <div class="actions">
                <?=  AwsBaseHtml::submitButton($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Update'), ['class' => 'btn btn-transparent green btn-outline btn-circle btn-sm']) ?>
                <button type="button" name="back" class="btn btn-transparent black btn-outline btn-circle btn-sm"
                        onclick="history.back(-1)">
                    <i class="fa fa-angle-left"></i> Back
                </button>
            </div>
        </div>
        <div class="portlet-body">
            <div class="form-body">

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'type')->dropDownList(
            $model->getAllPettype()
            ) ?>

    <?= $form->field($model, 'weight')->textInput() ?>

    <?= $form->field($model, 'age')->textInput() ?>

    <?= $form->field($model, 'haircolor')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note')->textarea(['rows' => 2]) ?>

            </div>
        </div>
    </div>

<?php ActiveForm::end(); ?>
