<?php include_once('header.php'); ?>
<div class="container">
    <h3>View all Posts </h3>

    <?php if (count($posts)): ?>
        <?php foreach ($posts as $post): ?>
            <div>
                <div class="col-md-7">
                   <h3><?php echo anchor("welcome/view/{$post->id}", " $post->title"); ?></h3>

                    <p><?php echo $post->description; ?></p>
                </div>
                <div class="col-md-5">
                    <img alt="img" style="width: 200px" src="<?php echo  base_url("/images/$post->img"); ?>">
                    <p><b><?php echo $post->author; ?></b> </p>
                    <p><i> <?php echo $post->data_creates; ?></i></p>
                </div>


            </div>
        <?php endforeach; ?>
    <?php else: ?>
        <p>No Records Found!</p>

    <?php endif; ?>

</div>
<?=$this->pagination->create_links();?>
<?php include_once('footer.php'); ?>