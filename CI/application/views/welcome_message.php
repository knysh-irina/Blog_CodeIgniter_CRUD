
<?php include_once ('header.php'); ?>
<div class="container">
    <h3>View all Posts </h3>
    <?php if($msg = $this->session->flashdata('msg')): ?>
        <?php echo $msg;  ?>
    <?php endif; ?>
    <?php echo anchor('welcome/create', 'add Post', ['class' => 'btn btn-primary']); ?>
    <?php echo anchor('main/articles', 'Main Page', ['class' => 'btn btn-primary']); ?>
    <table class="table table-striped table-hover ">
        <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Image</th>
            <th>Author</th>
            <th>Creation Date</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php if(count($posts)): ?>
            <?php foreach ($posts as $post): ?>
        <tr>
            <td> <?php echo  $post->title; ?></td>
            <td><?php echo  $post->description; ?></td>
            <td><?php echo  $post->img; ?></td>
            <td><?php echo  $post->author; ?></td>
            <td><?php echo  $post->data_creates; ?></td>
            <td>
                <?php echo anchor("welcome/view/{$post->id}", 'View', ['class' => 'label label-primary']); ?>
                <?php echo anchor("welcome/update/{$post->id}", 'Update', ['class' => 'label label-success']); ?>
                <?php echo anchor("welcome/delete/{$post->id}", 'Delete', ['class' => 'label label-danger']); ?>
            </td>
        </tr>
            <?php  endforeach; ?>
     <?php else:  ?>
            <tr>No Records Found!</tr>

     <?php  endif;  ?>
        </tbody>
    </table>
</div>
 <?php include_once ('footer.php'); ?>