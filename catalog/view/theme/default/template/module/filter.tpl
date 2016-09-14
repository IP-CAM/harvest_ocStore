<div class="panel panel-default">
  <div class="panel-heading"><?php echo $heading_title; ?></div>
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
            <select class="form-control" id="select_filter-group<?php echo $filter_group['filter_group_id']; ?>" name="">
              <option>------------</option>
        <?php foreach ($filter_group['filter'] as $filter) { ?>
              <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
              <option name="filter[]" value="<?php echo $filter['filter_id']; ?>" selected />
              <?php echo $filter['name']; ?></option>
              <?php } else { ?>
              <option name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
              <?php echo $filter['name']; ?></option>
              <?php } ?>
        <?php } ?>
            </select>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
</div>
<script type="text/javascript"><!--
//$('#select_filter-group2').on('change', function() {
//  alert( "Группа поменялась!" );
//});

$('#button-filter').on('click', function() {
	filter = [];

	$('option[name^=\'filter\']:selected').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
