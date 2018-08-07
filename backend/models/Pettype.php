<?php
namespace backend\models;

use Yii;
use common\models\PettypeBase;
use yii\db\ActiveRecord;
use yii\db\Expression;
use yii\helpers\FileHelper;
use common\libs\Images;

class Pettype extends PettypeBase{

  public function attributeLabels() {
      return [
          'name' => 'Tên'
      ];
  }
}
