<?= $this->extend('layouts/default.php')?>


<?= $this-> section('breadCrumb') ?>
<div style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Categories</li>
        <li class="breadcrumb-item " aria-current="page"><?= $title ?></li>
    </ol>
</div>
<?= $this->endSection(); ?>

<?= $this-> section('content') ?>
<h1><?= $title ?></h1>

<h1>Question Area</h1>



<?= $this->endSection(); ?>