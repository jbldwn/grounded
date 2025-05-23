<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">

        <!-- Left side -->
        <a class="navbar-brand" href="<?= base_url('/') ?>">Grounding</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <?php if($title == "Home"): ?>
                <li class="nav-item">
                    <a class="nav-link active" href="<?= base_url('/') ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="<?= base_url('/categories') ?>">Categories</a>
                </li>

                <?php elseif($title == "Categories"): ?>
                <li class="nav-item">
                    <a class="nav-link " href="<?= base_url('/') ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<?= base_url('/categories') ?>">Categories</a>
                </li>


                <?php else: ?>
                <li class="nav-item">
                    <a class="nav-link " href="<?= base_url('/') ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('/categories') ?>">Categories</a>
                </li>
                <?php endif; ?>

            </ul>

            <!-- Right side -->
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                <?php if(auth()->loggedIn()):?>
                <!-- check if adding is active page -->
                <?php if($title == "Account"): ?>
                <li class="nav-item">
                    <a class="nav-link active" href="<?= site_url('account/') ?>">Account</a>
                </li>
                <?php else: ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?= site_url('account/') ?>">Account</a>
                </li>
                <?php endif; ?>


                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('/logout') ?>">Logout</a>
                </li>
                <?php else : ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('/login') ?>">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('/register') ?>">Register</a>
                </li>
                <?php endif; ?>

            </ul>
        </div>
    </div>
</nav>