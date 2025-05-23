<?php

namespace App\Controllers;
use App\Models\CategoriesModel;

class Categories extends BaseController
{
    public function index(): string
    {
        //open DB to return all categories
        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        return view('Categories/index', [
            'title' => 'Categories', 'categories' => $data
        ]);
    }
    public function selected($id): string
    {
        //open DB to return all categories

        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->find($id);

        // dd($data);

        return view('categories/selected', [
            'category' => $data['category'], 'title' => $data['category'],'categories' => $data
        ]);
    }
    public function new(): string
    {
        //open DB to return all categories
        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        // dd($data);

        return view('Categories/new', [
            'title' => 'New Category', 'categories' => $data, 'category' => 'New Category'
        ]);
    }
    public function add(){
        //retrieve NewCategory data
        $rawCategory = $this->request->getPost('title');
        $newCategory = [
            'category' => $rawCategory
        ];

        //establish model
        $model = new CategoriesModel();

        //insert new category to DB
        $model->insert($newCategory);

        //get all categories
        $categories = $model->findAll();

        //get new id and new article
        $categoryId = $model->getInsertID();
        $addedCategory = $model->find($categoryId);

        //redirect to new category
        //take to add questions to Category page
        return view('Categories/questions', [
            'category' => $addedCategory['category'], 'title' => "Add Questions", 'categories' => $categories

        ]);
        // dd($newCategory);
    }
    public function questionLogged($data): string
    {
        //open DB to return all categories
        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->find($id);

        // dd($data);

        return view('Categories/questions', [
            'title' => 'Categories', 'categories' => $data
        ]);
    }
    public function remove(): string
    {
        //open DB to return all categories
        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        return view('Categories/remove', [
            'title' => 'Remove Categories', 'categories' => $data
        ]);
    }
    public function delete($id): string
    {
        // Form will pass data into here to delete mulple categories at once
        
        //open DB to return all categories
        $db = db_connect();

        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        // dd($data);

        return view('Categories/remove', [
            'title' => 'Remove Categories', 'categories' => $data
        ]);
    }
}