<?php

namespace App\Models;
use CodeIgniter\Model;

class BankModel extends Model{
    protected $table = 'categoryquestionbank';
    protected $allowedFields = ['question_id', 'category_id'];
}