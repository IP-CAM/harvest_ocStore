<?php echo $header; ?>
<div class="container">
	<div class="page-404">
	  <div class="row">
		<div class="hidden">
		<?php echo $column_left; ?>
		</div>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
		  <div class="hidden">
			<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
			</ul>
		  </div>
		  <h1><?php echo $heading_title; ?></h1>
		  <p><?php echo $text_error; ?></p>
		  <div class="buttons">
			<div class="text-center"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
		  </div>
		  <?php echo $content_bottom; ?></div>
		<div class="hidden">
		<?php echo $column_right; ?></div>
		</div>
	</div>
</div>
<?php echo $footer; ?>