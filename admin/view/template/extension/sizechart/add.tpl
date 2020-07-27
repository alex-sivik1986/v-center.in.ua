<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-option" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $text_title; ?></h1>
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
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-option" class="form-horizontal">
                    <div class="form-group required">
                        <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="chart-name" value="" placeholder="<?php echo $entry_name; ?>" class="form-control" />  
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_top_description; ?></label>
                        <div class="col-sm-10">
                            <textarea id="text-top-description" name="text-top-description" value="" placeholder="<?php echo $text_top_description_help; ?>" class="form-control" ></textarea>                            
                            <label><i><?php echo $text_top_description_help; ?></i></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_bottom_description; ?></label>
                        <div class="col-sm-10">
                            <textarea id="text-bottom-description" name="text-bottom-description" value="" placeholder="<?php echo $text_bottom_description_help; ?>" class="form-control" ></textarea>
                            <label><i><?php echo $text_bottom_description_help; ?></i></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_chart_title; ?></label>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_1; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_2; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_3; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_4; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_5; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_6; ?>" class="form-control" />  
                        </div>
                        <div class="col-sm-1">
                            <input type="text" name="chart-heading[]" value="" placeholder="<?php echo $text_chart_heading_7; ?>" class="form-control" />  
                        </div>
                    </div>
                    <?php 
                        $size_data_table = '<div class="form-group" id="clone-div"><label class="col-sm-2 control-label">'.$text_size_data.'</label><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-1"><input type="text" name="size-data[]" class="form-control" /></div><div class="col-sm-3"></div></div>';                        
                        echo $size_data_table;
                    ?>
                    
                    
                    <div id="clone-append-to"></div>
                    
                    <div class="col-sm-1 pull-right">
                        <button type="button" id="add-row" form="form-option" class="btn btn-primary"><?php echo $text_new_row ?></button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
    <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
    <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
    <script type="text/javascript"><!--
        $('#text-top-description, #text-bottom-description').summernote({height: 300});

        $('#add-row').on('click', function () {
            $('<?php echo $size_data_table; ?>').clone().appendTo('#clone-append-to');
        });

//--></script>

</div>
<?php echo $footer; ?>