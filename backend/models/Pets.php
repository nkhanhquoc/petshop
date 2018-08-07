<?php
namespace backend\models;

use Yii;
use common\models\PetsBase;
use yii\db\ActiveRecord;
use yii\db\Expression;
use yii\helpers\FileHelper;
use yii\behaviors\BlameableBehavior;
use common\libs\Images;


class Pets extends PetsBase{

  //put your code here
  public function behaviors() {
      return [
              BlameableBehavior::className(),
      ];
  }

  public function attributeLabels() {
      return [
          'name' => 'Tên',
          'type' => 'Loại',
          'weight' => 'Cân nặng',
          'age' => 'Tuổi',
          'haircolor' => 'Màu Lông',
          'note' => 'Thông tin',
          'created_by' => 'Chủ nhân'
      ];
  }

  public function rules()
  {
      return [
          [['name','age'],'required'],
          [['id', 'type', 'age','created_by'], 'integer'],
          [['name', 'haircolor'], 'string', 'max' => 255],
          [['weight'], 'string', 'max' => 5],
          [['note'], 'string', 'max' => 1000]
      ];
  }

  public function getAllPettype() {
     $query = Pettype::find()->all();
     $list = [];
     if ($query) {
         foreach ($query as $type) {
             $list[$type->id] = $type->name;
         }
     }
     return $list;
 }

 public function getOwner(){
   $ower = User::findOne($this->created_by);
   return $ower->username;
 }
}
