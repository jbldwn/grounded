<?php

namespace App\Controllers;
use App\Models\CategoriesModel;
use App\Models\QuestionModel;
use App\Models\BankModel;

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
    /* ADD QUESTION */
        //establish model
        $questionModel = new \App\Models\QuestionsModel();

        //retrive Question data
        $rawQuestion = $this->request->getPost('question');

        //establish new question array
        $newQuestion = [
            'question' => $rawQuestion
        ];

        //variable to check existing question
        $existingQuestion = $questionModel->where('question', $rawQuestion)->first();


        if($existingQuestion != null){ //check if question already exists

        //set existing as added
        $newQuestion = $existingQuestion;

        }else{ //otherwise, add question:

        //insert new question to DB
        $questionModel->insert($newQuestion);

        //get new id and new article
        $questionId = $questionModel->getInsertID();
        $newQuestion['id'] = (int)$questionId;
        }
    /* END ADD QUESTION */
        // dd($newQuestion);

        $ogCategory = $this->updateBanks($newQuestion['id']);

        // dd($ogCategory);

        //ready categories for view
        $CategoryModel = new CategoriesModel();
        
        
        /* !!!!!!!!!!!!!!!!!!!!!!!!!!     Working on sending all categories to view     !!!!!!!!!!!!!!!!!!!!!!!!!! */
        $ogCatData = $CategoryModel->find($ogCategory);
        $data = $CategoryModel->findAll();

        // establish completion message
        $completionMessage = "The question <i>'" . $newQuestion['question'] . "'</i> added successfully to the <i>'" . $ogCatData['category'] . "'</i> category.";

        return view('questions/new', [
            'category' => $ogCatData['category'], 'title' => $ogCatData['category'], 'categories' => $data, 'categoryId' => $ogCatData['id'], 'msg' => $completionMessage
        ]);
    }
    public function updateBanks($questionId): string{
    /* UPDATE QUESTION BANKS */
        //establish model
        $bankModel = new \App\Models\BankModel();

        //get selected categories
        $rawSelected = $this->request->getPost('selected');

        // dd($rawSelected);

        foreach ($rawSelected as $category => $id) {

            //check if "OG" category is selected
            if (str_contains( $id, 'og')) {
                $id = explode('og', $id)[0]; // Remove 'og' from the string

                $ogCategory = $id; // Store the original category ID
            }
            
            $rawSelected[$category] = (int)$id; // Convert each value to an integer

            //prepare data for bank
            $data = [
                'question_id' => $questionId,
                'category_id' => $rawSelected[$category]
            ];

            //set variable to check existing bank entry
            $existingBankEntry = $bankModel->where($data)->first();

            //if existingBankEntry is null, then add to bank
            if($existingBankEntry == null){ //check if entry already exists in bank
                
                //add to bank
                $bankModel->insert($data);
            }
            //if existing, do nothing
        }
        /* END UPDATE QUESTION BANKS */
        
        //return the original category ID
        return $ogCategory;
    }
}
    