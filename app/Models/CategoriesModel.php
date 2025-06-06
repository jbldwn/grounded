<?php

namespace App\Models;
use CodeIgniter\Model;

class CategoriesModel extends Model
{
    protected $table = 'categories';
    protected $allowedFields = ['category', 'id'];

    public function getCategories()
    {
        return $this->findAll();
    }
}
?>