<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-location" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-location" class="form-horizontal">
<div class="tab-content">
       
              <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
	 <?php $m=0; foreach ($languages as $language) {   ?>
	<div class="tab-pane <?=($m==0)?'active':''?>" id="language<?php echo $language['language_id']; ?>">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name[<?php echo $language['language_id']; ?>]" value="<?php echo $name[$language['language_id']]; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ++$m; ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-address<?php echo $language['language_id']; ?>"><?php echo $entry_address; ?></label>
            <div class="col-sm-10">
              <textarea type="text" name="address[<?php echo $language['language_id']; ?>]" placeholder="<?php echo $entry_address; ?>" rows="5" id="input-address<?php echo $language['language_id']; ?>" class="form-control"><?php echo $address[$language['language_id']]; ?></textarea>
              <?php if ($error_address) { ?>
              <div class="text-danger"><?php echo $error_address; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-geocode<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" data-container="#content" title="<?php echo $help_geocode; ?>"><?php echo $entry_geocode; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="geocode[<?php echo $language['language_id']; ?>]" value="<?php echo $geocode[$language['language_id']]; ?>" placeholder="<?php echo $entry_geocode; ?>" id="input-geocode<?php echo $language['language_id']; ?>" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-telephone<?php echo $language['language_id']; ?>"><?php echo $entry_telephone; ?></label>
            <div class="col-sm-10">
			<textarea type="text" name="telephone[<?php echo $language['language_id']; ?>]" placeholder="<?php echo $entry_telephone; ?>" rows="5" id="input-telephone" class="form-control"><?php echo $telephone[$language['language_id']]; ?></textarea>
              
              <?php if ($error_telephone) { ?>
              <div class="text-danger"><?php echo $error_telephone; ?></div>
              <?php  } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-fax"><?php echo $entry_fax; ?></label>
            <div class="col-sm-10">
              <input type="text" name="fax[<?php echo $language['language_id']; ?>]" value="<?php echo $fax[$language['language_id']]; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-image<?php echo $language['language_id']; ?>"><?php echo $entry_image; ?></label>
            <div class="col-sm-10"><a href="" id="thumb-image<?php echo $language['language_id']; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb[$language['language_id']]; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
              <input type="hidden" name="image[<?php echo $language['language_id']; ?>]" value="<?php echo $image[$language['language_id']]; ?>" id="input-image<?php echo $language['language_id']; ?>" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-open<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" data-container="#content" title="<?php echo $help_open; ?>"><?php echo $entry_open; ?></span></label>
            <div class="col-sm-10">
              <textarea name="open[<?php echo $language['language_id']; ?>]" rows="5" placeholder="<?php echo $entry_open; ?>" id="input-open<?php echo $language['language_id']; ?>" class="form-control"><?php echo $open[$language['language_id']]; ?></textarea>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-comment<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" data-container="#content" title="<?php echo $help_comment; ?>"><?php echo $entry_comment; ?></span></label>
            <div class="col-sm-10">
              <textarea name="comment[<?php echo $language['language_id']; ?>]" rows="5" placeholder="<?php echo $entry_comment; ?>" id="input-comment<?php echo $language['language_id']; ?>" class="form-control"><?php echo $comment[$language['language_id']]; ?></textarea>
            </div>
          </div>
		  </div>
		  
				 <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>