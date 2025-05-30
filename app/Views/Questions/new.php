<?= $this->extend('layouts/default.php')?>

<?= $this-> section('breadCrumb') ?>
<div style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Categories</li>
        <li class="breadcrumb-item active" aria-current="page"><?= $category ?></li>
        <li class="breadcrumb-item " aria-current="page"><?= $title ?></li>
    </ol>
</div>
<?= $this->endSection(); ?>

<?= $this-> section('content') ?>

<div class="categories">
    <div class=" d-flex align-items-center justify-content-between"
        style="border-bottom: 1px solid black; margin: 30px 0; padding-bottom:10px;">

        <h1>Add Questions to <?= $category ?></h1>
    </div>
    <!-- Add form below -->
    <?php
    helper('form');
    echo form_open('questions/add');
?>
    <div class="row justify-content-between align-items-center" style="margin-bottom: 20px;">
        <?= form_label('Question:', 'question',['class'=>'col-lg-1 col-md-2 offset-1 offset-sm-0']) ?>
        <?= form_input('question', '', ['placeholder'=> 'New Question...', 'class'=>'col-lg-7 col-md-4'], 'text')?>
        <?= form_submit("addArticle", 'Add', ['class'=> 'col-lg-2 col-md-2 btn btn-primary']) ?>
    </div>
    <div class="row justify-content-between align-items-start">
        <div class="col-lg-1 col-md-2 offset-1 offset-sm-0">Categories:</div>
        <div class="col-lg-7 col-md-4">
            <?php foreach($categories as $categoryBtn): ?>
            <?php if($categoryId == $categoryBtn['id']): ?>
            <!-- Working Buttong -->
            <input type="checkbox" name='selected[]' checked class="btn-check" id="btn-check-<?= $categoryBtn['id']?>"
                value="<?= $categoryBtn['id'] ?>" autocomplete="off">
            <label class="btn btn-outline-warning"
                for="btn-check-<?= $categoryBtn['id']?>"><?= $categoryBtn['category'] ?></label>
            <!-- END Working Buttong -->



            <?php else: ?>
            <!-- Working Buttong -->
            <input type="checkbox" name='selected[]' class="btn-check" id="btn-check-<?= $categoryBtn['id']?>"
                value="<?= $categoryBtn['id'] ?>" autocomplete="off">
            <label class="btn btn-outline-warning"
                for="btn-check-<?= $categoryBtn['id']?>"><?= $categoryBtn['category'] ?></label>
            <!-- END Working Buttong -->

            <?php endif; ?>




            <?php endforeach; ?>

        </div>
        <div class="col-lg-2 col-md-2"></div>
        <?= form_close() ?>

    </div>

</div>
</div>

<?= $this->endSection(); ?>