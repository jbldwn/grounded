<?php

namespace App\Models;
use CodeIgniter\Model;

class QuestionsModel extends Model
{
    public $table = 'questions';
    protected $allowedFields = ['question', 'id'];

    // public function getQuestionsWithCategories()
    // {
    //     return $this->select('questions.*, categoryquestionbank.question_id')
    //                 ->join('categoryquestionbank', 'categoryquestionbank.question_id = questions.id')
    //                 ->findAll();
    // }
    // public function addMultiCategoryQuestion($question_id, $category_id)
    // {
    //     $this->table('categoryquestionbank')->insert([
    //         'question_id' => $question_id,
    //         'category_id' => $category_id
    //     ]);
    //     return $this->select('questions.*, categoryquestionbank.question_id')
    //                 ->join('categoryquestionbank', 'categoryquestionbank.question_id = questions.id')
    //                 ->findAll();
    // }
}
?>