<?= $this->extend('layouts/default.php')?>

<?= $this-> section('breadCrumb') ?>
<div style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Categories</li>
        <li class="breadcrumb-item " aria-current="page"><?= $category ?></li>
    </ol>
</div>
<?= $this->endSection(); ?>

<!-- Page Title -->
<?= $this->section("title") ?>
Add Category
<?= $this->endSection(); ?>





<?= $this-> section('content') ?>

<div class="categories">
    <div class=" d-flex align-items-center justify-content-between"
        style="border-bottom: 1px solid black; margin: 30px 0; padding-bottom:10px;">

        <h1><?= $title ?></h1>
    </div>
    <!-- Add form below -->
    <?php
    helper('form');
    echo form_open('categories/add');
?>
    <div class="row" style="margin-bottom: 20px;">
        <?= form_label('Category:', 'title',['class'=>'col-lg-1 col-md-2 offset-1 offset-sm-0']) ?>
        <?= form_input('title', '', ['placeholder'=> 'subject...', 'class'=>'col-lg-7 col-md-4'], 'text')?>
        <?= form_submit("addCategory", 'Save', ['class'=> 'col-lg-2 col-md-2 btn btn-primary']) ?>
    </div>
    <div class="row">
        <div class="col-lg-1 col-md-2 offset-1 offset-sm-0">Existing Questions:</div>
        <div class="col-lg-7 col-md-4">
            <?php foreach($categories as $category): ?>
            <button type="button" class="btn btn-light" style="margin:3px;" disabled data-bs-toggle="button"
                autocomplete="off"><?= $category['category'] ?></button>

            <?php endforeach; ?>

        </div>
        <div class="col-lg-2 col-md-2"></div>
    </div>
</div>
</div>

<?= $this->endSection(); ?>