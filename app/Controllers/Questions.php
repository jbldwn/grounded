<?php

namespace App\Controllers;
use App\Models\CategoriesModel;

class Questions extends BaseController
{
    public function index(): string
    {
        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->findAll();

        // dd($data);
        return view('questions/index', [
            'title' => 'Categories', 'categories' => $data
        ]);
    }
    public function new(): string
    {
        // new CategoriesModel to house data
        $model = new CategoriesModel();

        //returns pulled data from table
        $data = $model->find($id);

        // dd($data);

        return view('questions/new', [
            'category' => $data['category'], 'title' => $data['category'],'categories' => $data
        ]);
    }
    public function add(): string
    {
        //retrive Question data
        $rawQuestion = $this->request->getPost('question');
        $rawSelected = $this->request->getPost('selected');
        dd($rawSelected);

        return view('categories/selected', [
            'category' => $data['category'], 'title' => $data['category'],'categories' => $data
        ]);
    }
}
    