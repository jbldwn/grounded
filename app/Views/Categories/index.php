<?= $this->extend('layouts/default.php')?>

<!-- Page Title -->
<?= $this->section("title") ?>
Categories
<?= $this->endSection(); ?>





<?= $this-> section('content') ?>

<div class="categories col-8 offset-2">
    <div class=" d-flex align-items-center justify-content-between"
        style="border-bottom: 1px solid black; margin: 30px 0; padding-bottom:10px;">

        <h1>Categories</h1>
        <?php if(auth()->loggedIn()):?>
        <div>
            <a style="margin-right:5px" href="<?= base_url('/categories/new') ?>">Add</a>
            <a href="<?= base_url('/categories/remove') ?>">Remove</a>
        </div>
        <?php endif; ?>

    </div>

    <div class="options row row-cols-6 row-cols-sm-3" style="margin-bottom: 50px;">
        <?php foreach($categories as $category): ?>
        <button type="button" class="btn btn-outline-primary col"
            onclick="window.location.href='<?= base_url('categories/selected/' . $category['id']) ?>';">
            <?= $category['category'] ?></button>
        <?php endforeach; ?>
    </div>

</div>
</div>

<?= $this->endSection(); ?>