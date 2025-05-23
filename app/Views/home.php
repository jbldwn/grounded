<?= $this->extend('layouts/default.php')?>

<?= $this->section("welcome") ?>
<p class="container" style="margin-top:20px; opacity:60%"><em>
        Grounding the self.</br>
        Connecting with others.</em>
</p>
<?= $this->endSection(); ?>

<?= $this-> section('content') ?>
<h3 style="margin-top: 30px">Question Area</h3>
<!-- This are would display the Question from A Random Category on HOME -->
<!-- This are would display the Question from the Category modeled after HOME -->
<!-- Question would be in Quote Block-->
<!-- Quoted from would be the Catacory -->
<!-- Tool belt for Questions: [refresh, add, favorite] -->

<h3 style="margin-top: 30px">Tool Area</h3>
<!-- This are would display a container of developed tools -->
<!-- Each tool could be expanded and collapsed (Stand-in Image used on Prototype) -->

<h3 style="margin-top: 30px">Note Area</h3>
<!-- This are would **ONLY** display to a loggedin user  -->
<!-- Note captures use state of page to be returned to at a later time -->

<div class="testimony" style="margin-top: 45px">
    <h1>About this Final</h1>

    <h6>An Honest Reflection</h6>
    <p>Just a personal note from me, to you. This final is not what I want it to be, but it's triving to prove what I've
        learned and that I've learned enough to apply it in practice. </p>
    <p>It is my hope to actually build this as a passion project</p>

    <p>I am really excited as I see how this class in particular is an intersection between all that I've learned in my
        College Career, and I see and feel the pieces snapping into place as I continue to pursue this project.</p>
</div>


<?= $this->endSection(); ?>