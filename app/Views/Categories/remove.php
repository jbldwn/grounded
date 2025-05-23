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

    <div class="options row row-cols-6 row-cols-sm-3" style="margin-bottom: 50px;">
        <?php foreach($categories as $category): ?>
        <button type="button" data-bs-toggle="button" autocomplete="off" aria-pressed="true"
            class="btn btn-outline-warning col">
            <?= $category['category'] ?></button>

        <?php endforeach; ?>
    </div>
    <div class="d-flex justify-content-end">
        <button type="button" class="btn btn-outline-secondary"
            onclick="window.location.href='<?= base_url('categories/') ?>';">Cancel</button>
        <button type="button" class="btn btn-danger"
            onclick="window.location.href='<?= base_url('categories/delete/' . $category['id']) ?>';">Delete</button>

        <!-- add alert: any orphaned questions will also be deleted -->
    </div>

</div>
</div>

<?= $this->endSection(); ?>