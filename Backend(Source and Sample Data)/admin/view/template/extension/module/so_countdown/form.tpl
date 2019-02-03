<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
  	<div class="page-header">
    	<div class="container-fluid">
      		<div class="pull-right">
        		<button type="submit" form="form-so-countdown" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i> <?php echo $button_save; ?></button>
                <a class="btn btn-success" onclick="$('#action').val('save_edit');$('#form-so-countdown').submit();" data-toggle="tooltip" title="<?php echo $button_savestay; ?>" ><i class="fa fa-pencil-square-o"></i> <?php echo $button_savestay?></a>
        		<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a>
        	</div>
			<h1><?php echo $heading_title_so; ?></h1>
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
        		<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      		</div>
      		<div class="panel-body">
	   			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-so-countdown" class="form-horizontal">
	   				<input type="hidden" name="action" id="action" value=""/>
	   				<ul class="nav nav-tabs" id="CheckoutTab">
						<li class="active"><a href="#tab-module-setting" data-toggle="tab"><i class="fa fa-cog fa-fw"></i> <?php echo $tab_module_setting; ?></a></li>
						<!-- <li class=""><a href="#tab-help" data-toggle="tab"><i class="fa fa-question-circle"></i> <?php echo $tab_help; ?></a></li> -->
					</ul>
					<div class="tab-content">
						<div class="tab-pane active in" id="tab-module-setting">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-status"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_status_help?>"><?php echo $text_status; ?></span></label>
								<div class="col-sm-3">
									<select name="status" id="input-status" class="form-control">
										<?php if (isset($status) && $status == 1) {?>
			                				<option value="1" selected="selected"><?php echo $text_enabled?></option>
			                				<option value="0"><?php echo $text_disabled?></option>
			                			<?php }else {?>
			                				<option value="1"><?php echo $text_enabled?></option>
			                				<option value="0" selected="selected"><?php echo $text_disabled?></option>
			                			<?php }?>
			                		</select>
				  				</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-name"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_name_help?>"><?php echo $text_name; ?></span></label>
								<div class="col-sm-3">
									<input type="text" id="input-name" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
                                    <?php if ($error_name) { ?>
                                        <div class="text-danger"><?php echo $error_name; ?></div>
                                    <?php } ?>
				  				</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-priority"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_priority_help?>"><?php echo $text_priority; ?></span></label>
								<div class="col-sm-3">
									<input type="text" id="input-priority" name="priority" value="<?php echo $priority; ?>" placeholder="<?php echo $entry_priority; ?>" id="input-name" class="form-control" />
				  				</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-width"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_width_help?>"><?php echo $text_width; ?></span></label>
								<div class="col-sm-3">
									<input type="text" id="input-width" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-name" class="form-control" />
                                    <?php if ($error_width) { ?>
                                        <div class="text-danger"><?php echo $error_width; ?></div>
                                    <?php } ?>
				  				</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-height"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_height_help?>"><?php echo $text_height; ?></span></label>
								<div class="col-sm-3">
									<input type="text" id="input-height" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-name" class="form-control" />
                                    <?php if ($error_height) { ?>
                                        <div class="text-danger"><?php echo $error_height; ?></div>
                                    <?php } ?>
				  				</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-opacity"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_opacity_help?>"><?php echo $text_opacity; ?></span></label>
								<div class="col-sm-3">
									<input type="text" id="input-opacity" name="opacity" value="<?php echo $opacity; ?>" placeholder="<?php echo $entry_opacity; ?>" id="input-name" class="form-control" />
				  				</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-display-countdown"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_display_countdown_help?>"><?php echo $text_display_countdown; ?></span></label>
								<div class="col-sm-3">
									<?php if (isset($display_countdown) && $display_countdown == 1) {?>
										<label class="radio-inline"><input type="radio" name="display_countdown" value="1" checked /><?php echo $text_yes?></label>
	                                    <label class="radio-inline"><input type="radio" name="display_countdown" value="0" /><?php echo $text_no?></label>
	                               	<?php }else {?>
	                               		<label class="radio-inline"><input type="radio" name="display_countdown" value="1"  /><?php echo $text_yes?></label>
	                                    <label class="radio-inline"><input type="radio" name="display_countdown" value="0" checked /><?php echo $text_no?></label>
	                               	<?php }?>
				  				</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-date-start"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_date_start_help?>"><?php echo $text_date_start; ?></span></label>
								<div class="col-sm-3">
									<div class="input-group datetime">
                                        <input type="text" name="date_start" value="<?php echo $date_start?>" placeholder="" data-date-format="YYYY-MM-DD HH:mm:ss" class="form-control" />
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                        </span>
                                    </div>
				  				</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-date-expire"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_date_expire_help?>"><?php echo $text_date_expire; ?></span></label>
								<div class="col-sm-3">
									<div class="input-group datetime">
                                        <input type="text" name="date_expire" value="<?php echo $date_expire?>" placeholder="" data-date-format="YYYY-MM-DD HH:mm:ss" class="form-control" />
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                        </span>
                                    </div>
                                    <?php if ($error_date) { ?>
                                        <div class="text-danger clear clr clearfix"><?php echo $error_date; ?></div>
                                    <?php } ?>
				  				</div>
							</div>
							<div class="form-group ">                                
                                <div class="col-sm-10">
                                    <ul class="nav nav-tabs" id="language">
                                    	<?php foreach ($languages as $language) { ?>
							                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
						                <?php } ?>
                                    </ul>
                                    <div class="tab-content">
                                    	<?php foreach ($languages as $language) { ?>
	                                        <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                                                <div class="form-group ">
                                                    <label class="col-sm-2 control-label" for="input-heading-title"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_heading_title_help?>"><?php echo $text_heading_title; ?></span></label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="popup_description[<?php echo $language['language_id']; ?>][heading_title]" value="<?php echo isset($popup_description[$language['language_id']]['heading_title']) ? $popup_description[$language['language_id']]['heading_title'] : ''; ?>" placeholder="" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_content_help?>"><?php echo $text_content; ?></span></label>
    	                                            <div class="col-sm-10">
                                                        <textarea name="popup_description[<?php echo $language['language_id']; ?>][description]" id="input-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($popup_description[$language['language_id']]) ? $popup_description[$language['language_id']]['description'] : ''; ?></textarea>
                                                    </div>
                                                </div>
	                                        </div>
                                        <?php }?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
				                <label class="col-sm-2 control-label" for="input-content"><span data-toggle="tooltip" title="" data-original-title="<?php echo $text_image_help?>"><?php echo $text_image; ?></span></label>
				                <div class="col-sm-3"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
				                  	<input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
				                </div>
			              	</div>
			              	<div class="form-group ">
                                <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
                                <div class="col-sm-10">
                                    <div class="table-responsive">
                                        <table id="layouts_table" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <td style="width: 1px;"><input type="checkbox" onclick="$('input[name*=\'popup_store\']').prop('checked', this.checked);" /></td>
                                                    <td class="text-left"><?php echo $text_name?></td>
                                                    <td class="text-left"><?php echo $text_link?></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            	<?php if (in_array(0, $popup_store_id)) { ?>
                                            		<tr>
                                            			<td><input type="checkbox" name="popup_store[]" value="0" checked="checked" /></td>
                                            			<td><?php echo $text_default; ?></td>
                                            			<td><input type="text" name="popup_link[0]" class="form-control" value="<?php echo isset($popup_link[0]['link']) ? $popup_link[0]['link'] : ''?>" /></td>
                                            		</tr>
                                            	<?php }else {?>
                                            		<tr>
                                            			<td><input type="checkbox" name="popup_store[]" value="0" /></td>
                                            			<td><?php echo $text_default; ?></td>
                                            			<td><input type="text" name="popup_link[0]" class="form-control" value="<?php echo isset($popup_link[0]['link']) ? $popup_link[0]['link'] : ''?>" /></td>
                                            		</tr>
                                            	<?php }?>
                                            	<?php foreach ($stores as $store) { ?>
                                                <tr>
                                                    <td>
                                                    	<?php if (in_array($store['store_id'], $popup_store_id)) { ?>
                                                    		<input type="checkbox" name="popup_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                                                    	<?php }else {?>
                                                    		<input type="checkbox" name="popup_store[]" value="<?php echo $store['store_id']; ?>" />
                                                    	<?php }?>
                                                    </td>
                                                    <td><?php echo $store['name']; ?></td>
                                                    <td><input type="text" name="popup_link[<?php echo $store['store_id']; ?>]" class="form-control" value="<?php echo isset($popup_link[$store['store_id']]['link']) ? $popup_link[$store['store_id']]['link'] : ''?>" /></td>
                                                </tr>
                                                <?php }?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
						</div>
					</div>
	   			</form>
	   		</div>
	   	</div>
	</div>
</div>
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/opencart.js"></script> 

<script type="text/javascript">
	$('.datetime').datetimepicker({
    	pickDate: true,
        pickTime: false
    });
</script> 
<script type="text/javascript"><!--
	$('#language a:first').tab('show');
//--></script>
<?php echo $footer; ?>