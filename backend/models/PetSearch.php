<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Pets;

/**
 * PetSearch represents the model behind the search form about `backend\models\Pets`.
 */
class PetSearch extends Pets
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'age'], 'integer'],
            [['name', 'weight', 'haircolor', 'note'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Pets::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['id' => SORT_DESC]]
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'type' => $this->type,
            'age' => $this->age,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'weight', $this->weight])
            ->andFilterWhere(['like', 'haircolor', $this->haircolor])
            ->andFilterWhere(['like', 'note', $this->note]);

        return $dataProvider;
    }
}
