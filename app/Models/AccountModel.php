<?php

namespace App\Models;
use CodeIgniter\Model;

class AccountModel extends Model
{
    protected $table = 'users';
    protected $allowedFields = ['category', 'id'];
}
?>