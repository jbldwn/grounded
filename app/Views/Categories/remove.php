<?= $this->extend('layouts/default.php')?>

<!-- Page Title -->
<?= $this->section("title") ?>
Categories
<?= $this->endSection(); ?>


<!-- Need to set up as form -->


<?= $this-> section('content') ?>

<div class="categories col-8 offset-2">
    <div class=" d-flex align-items-center justify-content-between"
        style="border-bottom: 1px solid black; margin: 30px 0; padding-bottom:10px;">

        <h1><?= $title?></h1>
        <?php if(auth()->loggedIn()):?>
        <a href="<?= base_url('/categories/') ?>">cancel</a>
        <?php endif; ?>

    </div>

    <!-- Add form below -->
    <?php
    helper('form');
    echo form_open('categories/delete');
    ?>

    <div class="options row row-cols-6 row-cols-sm-3" style="margin-bottom: 50px;">
        <?php foreach($categories as $category): ?>

        <a href="#" role="button" class="btn btn-outline-warning col">
            <?= form_input('catOptions[]', $category['category'], ['class'=>'btn btn-outline-success col'], 'checkbox')?>
            <?= form_label($category['category']) ?>
        </a>


        <?php endforeach; ?>
    </div>
    <div class="d-flex justify-content-end">
        <button type="button" class="btn btn-outline-secondary"
            onclick="window.location.href='<?= base_url('categories/') ?>';">Cancel</button>
        <?= form_submit('delete', 'Delete', ['class'=>'btn btn-danger']) ?>

        <!-- add alert: any orphaned questions will also be deleted -->
    </div>
    <?= form_close() ?>

</div>
</div>

<?= $this->endSection(); ?>