<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "pets".
 *
 * @property string $id
 * @property string $name
 * @property string $type
 * @property double $weight
 * @property integer $age
 * @property string $haircolor
 * @property string $note
 * @property string $created_by
 * @property string $updated_by
 */
class PetsDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pets';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'age', 'created_by', 'updated_by'], 'integer'],
            [['name', 'haircolor'], 'string', 'max' => 255],
            [['weight'], 'string', 'max' => 5],
            [['note'], 'string', 'max' => 1000]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'name' => Yii::t('backend', 'Name'),
            'type' => Yii::t('backend', 'Type'),
            'weight' => Yii::t('backend', 'Weight'),
            'age' => Yii::t('backend', 'Age'),
            'haircolor' => Yii::t('backend', 'Haircolor'),
            'note' => Yii::t('backend', 'Note'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_by' => Yii::t('backend', 'Updated By'),
        ];
    }
}
