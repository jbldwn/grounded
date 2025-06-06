<?php

namespace App\Models;
use CodeIgniter\Model;

class QuestionsModel extends Model
{
    public $table = 'questions';
    protected $allowedFields = ['question', 'id'];

}
?>