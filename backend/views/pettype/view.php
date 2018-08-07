<?php

use awesome\backend\widgets\AwsBaseHtml;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Pettype */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Pettypes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row pettype-view">
    <div class="col-md-12">
        <div class="portlet light portlet-fit portlet-datatable bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-list font-green"></i>
                    <span class="caption-subject font-green sbold uppercase">
                        <?=  AwsBaseHtml::encode($this->title) ?>
                    </span>
                </div>
                <div class="actions">
                    <?=                     AwsBaseHtml::a(Yii::t('backend', 'Update'), ['update', 'id' => $model->id],
                        ['class' => 'btn btn-transparent green btn-outline btn-circle btn-sm'])
                    ?>
                    <?=                     AwsBaseHtml::a(Yii::t('backend', 'Delete'), ['delete', 'id' => $model->id], [
                        'class' => 'btn btn-transparent red btn-outline btn-circle btn-sm',
                        'data' => [
                            'confirm' => Yii::t('backend', 'Are you sure you want to delete this item?'),
                            'method' => 'post',
                        ],
                    ])
                    ?>
                </div>
            </div>
            <div class="portlet-body">
                <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                            'id',
            'name',
                ],
                ]) ?>
            </div>
        </div>
    </div>
</div>
