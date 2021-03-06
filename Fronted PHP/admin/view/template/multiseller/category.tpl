<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <a id="ms-cats-approve" data-toggle="tooltip" title="<?php echo $ms_button_approve; ?>" class="btn btn-success"><i class="fa fa-check"></i></a>
                <a href="<?php echo $this->url->link('multimerch/category/create', 'token=' . $this->session->data['token'], true); ?>" data-toggle="tooltip" title="<?php echo $ms_seller_newcategory_heading; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                <a id="ms-cats-delete" data-toggle="tooltip" title="<?php echo $ms_delete; ?>" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
            </div>

            <h1><?php echo $ms_seller_category_manage; ?></h1>

            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <div class="container-fluid">
        <div class="alert alert-danger" style="display: <?php echo (isset($error_warning) && $error_warning) ? 'block' : 'none'; ?>;"><i class="fa fa-exclamation-circle"></i><?php if (isset($error_warning) && $error_warning) { echo $error_warning; } ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>

        <?php if (isset($success) && $success) { ?>
            <div class="alert alert-success" style="display: <?php echo (isset($success) && $success) ? 'block' : 'none'; ?>;"><i class="fa fa-check-circle"></i> <?php if(isset($success) && $success) { echo $success; } ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h1><?php echo $ms_seller_category_breadcrumbs; ?></h1>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <form class="form-inline" action="" method="post" enctype="multipart/form-data" id="form-categories">
                        <table class="list mmTable table table-bordered table-hover" style="text-align: center" id="list-categories">
                            <thead>
                            <tr>
                                <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
                                <td><?php echo $ms_seller_category; ?></td>
                                <td class="large"><?php echo $ms_seller; ?></td>
                                <td class="large" id="status_column"><?php echo $ms_status; ?></td>
                                <td class="small"><?php echo $ms_sort_order; ?></td>
                                <td class="large"><?php echo $ms_action; ?></td>
                            </tr>
                            <tr class="filter">
                                <td></td>
                                <td><input type="text"/></td>
                                <td><input type="text"/></td>
                                <td>
                                    <select id="status_select">
                                        <option></option>
                                        <?php $msCategory = new ReflectionClass('MsCategory'); ?>
                                        <?php foreach ($msCategory->getConstants() as $cname => $cval) { ?>
                                            <?php if (strpos($cname, 'STATUS_') !== FALSE) { ?>
                                                <option value="<?php echo $cval; ?>"><?php echo $this->language->get('ms_seller_category_status_' . $cval); ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    var msGlobals = {
        token: '<?php echo $token; ?>',
        status_active: '<?php echo MsCategory::STATUS_ACTIVE; ?>',
        error_not_selected: '<?php echo $ms_seller_category_error_not_selected; ?>'
    };
</script>
<?php echo $footer; ?>