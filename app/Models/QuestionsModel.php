<?php

namespace App\Models;
use CodeIgniter\Model;

class QuestionsModel extends Model
{
    protected $table = 'categories';
    protected $allowedFields = ['category', 'id'];
}
?>