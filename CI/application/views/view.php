<?php include_once('header.php'); ?>

<div class="container" style="margin-bottom: 20px">
<h3>View Post </h3>
    <h4><?php echo $post->title; ?> </h4>
    <p><?php echo $post->description; ?></p>
    <img alt="img" style="width: 200px" src="<?php echo  base_url("/images/$post->img"); ?>">
    <p><b><?php echo $post->author; ?></b> </p>
    <p><i> <?php echo $post->data_creates; ?></i></p>
    <?php echo anchor('welcome', 'Back', ['class' => 'btn btn-default']) ?>
</div>
<?php include_once('footer.php'); ?>
