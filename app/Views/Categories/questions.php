<?= $this->extend('layouts/default.php')?>

<?= $this-> section('content') ?>

<div class="categories">
    <div class=" d-flex align-items-center justify-content-between"
        style="border-bottom: 1px solid black; margin: 30px 0; padding-bottom:10px;">

        <h1>Add Questions to <?= $category ?></h1>
    </div>
    <!-- Add form below -->
    <?php
    helper('form');
    echo form_open('categories/add');
?>
    <div class="row" style="margin-bottom: 20px;">
        <?= form_label('Question:', 'title',['class'=>'col-lg-1 col-md-2 offset-1 offset-sm-0']) ?>
        <?= form_input('title', '', ['placeholder'=> 'subject...', 'class'=>'col-lg-7 col-md-4'], 'text')?>
        <?= form_submit("addArticle", 'Save', ['class'=> 'col-lg-2 col-md-2 btn btn-primary']) ?>
    </div>
    <div class="row">
        <div class="col-lg-1 col-md-2 offset-1 offset-sm-0">Selected Categories:</div>
        <div class="col-lg-7 col-md-4">
            <?php foreach($categories as $categoryBtn): ?>
            <?php if($category == $categoryBtn): ?>
            <button type="button" class="btn btn-outline-secondary active" style="margin:3px;" data-bs-toggle="button"
                aria-pressed="true" autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php else: ?>
            <button type="button" class="btn btn-outline-secondary" style="margin:3px;" data-bs-toggle="button"
                autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php endif; ?>
            <?php endforeach; ?>
        </div>
        <div class="col-lg-2 col-md-2"></div>
        <?= form_close() ?>

    </div>
    <div class="row">
        <div class="col-lg-1 col-md-2 offset-1 offset-sm-0">Remaining Categories:</div>
        <div class="col-lg-7 col-md-4">
            <?php foreach($categories as $categoryBtn): ?>
            <?php if($category == $categoryBtn): ?>
            <button type="button" class="btn btn-outline-secondary active" style="margin:3px;" data-bs-toggle="button"
                aria-pressed="true" autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php else: ?>
            <button type="button" class="btn btn-outline-secondary" style="margin:3px;" data-bs-toggle="button"
                autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php endif; ?>
            <?php endforeach; ?>
        </div>
        <div class="col-lg-2 col-md-2"></div>
        <?= form_close() ?>

    </div>
    <div class="row">
        <div class="col-lg-1 col-md-2 offset-1 offset-sm-0">Existing Questions:</div>
        <div class="col-lg-7 col-md-4">
            <?php foreach($categories as $categoryBtn): ?>
            <?php if($category == $categoryBtn): ?>
            <button type="button" class="btn btn-outline-secondary active" style="margin:3px;" data-bs-toggle="button"
                aria-pressed="true" autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php else: ?>
            <button type="button" class="btn btn-outline-secondary" style="margin:3px;" data-bs-toggle="button"
                autocomplete="off"><?= $categoryBtn['category'] ?></button>
            <?php endif; ?>
            <?php endforeach; ?>
        </div>
        <div class="col-lg-2 col-md-2"></div>
        <?= form_close() ?>

    </div>
</div>
</div>

<?= $this->endSection(); ?>