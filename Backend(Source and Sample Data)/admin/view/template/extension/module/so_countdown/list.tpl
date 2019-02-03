<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
  	<div class="page-header">
    	<div class="container-fluid">
      		<div class="pull-right">
      			<a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
      			<button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-category').submit() : false;"><i class="fa fa-trash-o"></i></button>
	      	</div>
	      	<h1><?php echo $heading_title; ?></h1>
	      	<ul class="breadcrumb">
	        	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	        	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	        	<?php } ?>
	      	</ul>
	    </div>
    </div>
    <div class="container-fluid">
    	<?php if ($error_warning) { ?>
	    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
	      	<button type="button" class="close" data-dismiss="alert">&times;</button>
	    </div>
	    <?php } ?>
	    <?php if ($success) { ?>
	    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
	      	<button type="button" class="close" data-dismiss="alert">&times;</button>
	    </div>
	    <?php } ?>
	    <div class="panel panel-default">
      		<div class="panel-heading">
        		<h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      		</div>
      		<div class="panel-body">
        		<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-category">
        			<div class="table-responsive">
        				<table class="table table-bordered table-hover">
			              	<thead>
			                	<tr>
			                  		<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
			                  		<td class="text-center"><?php echo $column_image; ?></td>
			                  		<td class="text-center">
			                  			<?php if ($sort == 'name') { ?>
					                    	<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
					                    <?php } else { ?>
					                    	<a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
					                    <?php } ?>
					                </td>
					                <td class="text-center">
					                	<?php if ($sort == 'sort_order') { ?>
					                    	<a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
					                    <?php } else { ?>
					                    	<a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
					                    <?php } ?>
					                </td>
					                <td class="text-center"><?php echo $column_status; ?></td>
					                <td class="text-center"><?php echo $column_date_start_expire; ?></td>
					                <td class="text-center"><?php echo $column_store; ?></td>
				                  	<td class="text-center"><?php echo $column_action; ?></td>
				                </tr>
				            </thead>
				            <tbody>
				            	<?php if (isset($lists) && !empty($lists)) { ?>
                					<?php foreach ($lists as $list) { ?>
                						<tr>
	                						<td class="text-center">
	                							<?php if (in_array($list['id'], $selected)) { ?>
							                    	<input type="checkbox" name="selected[]" value="<?php echo $list['id']; ?>" checked="checked" />
							                    <?php } else { ?>
							                    	<input type="checkbox" name="selected[]" value="<?php echo $list['id']; ?>" />
							                    <?php } ?>
							                </td>
							                <td class="text-center"><img src="<?php echo $list['image']?>" /></td>
							                <td class="text-center"><?php echo $list['name']; ?></td>
							                <td class="text-center"><?php echo $list['sort_order']; ?></td>
							                <td class="text-center"><?php echo $list['status'] == 1 ? $text_enabled : $text_disabled; ?></td>
							                <td class="text-center"><?php echo $list['date_start'].'<br/><span style="color:red;">'.$list['date_expire'].'</span>'; ?></td>
							                <td class="text-center" style="font-weight:bold;">
							                	<?php
							                		foreach ($list['stores'] as $store) {
							                			echo $store.'<br />';
							                		}
							                	?>
							                </td>
							                <td class="text-center"><a href="<?php echo $list['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
							          	</tr>
                					<?php } ?>
				                <?php } else { ?>
				                <tr>
				                  	<td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
				                </tr>
				                <?php } ?>
				            </tbody>
				        </table>
        			</div>
        		</form>
        	</div>
        </div>
    </div>
</div>
<?php echo $footer; ?>