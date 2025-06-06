<?php

namespace App\Controllers;
use App\Models\CategoriesModel;

class Categories extends BaseController
{
    public function index(): string
    {
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

        //variable to check existing category
        $existingCategory = $model->where('category', $rawCategory)->first();

        if($existingCategory != null){ //check if category already exists

        //set existing as added
        $addedCategory = $existingCategory;

        }else{ //otherwise, add category:

        //insert new category to DB
        $model->insert($newCategory);

        //get new id and new article
        $categoryId = $model->getInsertID();
        $addedCategory = $model->find($categoryId);
        }

        //get all categories
        $categories = $model->findAll();

        //redirect to add questions page
        return view('Questions/new', [ 'categoryId' => $addedCategory['id'],
            'category' => $addedCategory['category'], 'title' => "Add Questions", 'categories' => $categories
        ]);
        // dd($newCategory);
    }
    public function questionLogged($data): string
    {
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
        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        return view('Categories/remove', [
            'title' => 'Remove Categories', 'categories' => $data
        ]);
    }
    public function delete(): string
    {
        //retrieve catecory(ies) to delete
        $catsSelected = $this->request->getPost('catOptions');

        // new CategoriesModel to remove data
        $model = new CategoriesModel();

        //remove data from model
        foreach($catsSelected as $category){
            $catID = (int)$category;
            $model->delete($catID);
        }
        $data = $model->findAll();

        return view('Categories/index', [
            'title' => 'Categories', 'categories' => $data
        ]);
    }
}