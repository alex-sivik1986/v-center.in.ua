<?php echo $header; ?>

 <section id="bread-crumbs" class="white-bg">
                    <div class="container">
                    	<ul>
					   <?php foreach ($breadcrumbs as $breadcrumb) { ?>
					   <?php if(!empty($breadcrumb['href'])) { ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					   <?php } else { ?>
						   
						   <li><?php echo $breadcrumb['text']; ?></li>
						   
					  <?php } } ?>
                        </ul>
                    </div><!-- .container -->
					 <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
                </section>
                
     <section id="personal-page" class="container-1300"> 
                 <div class="row">
					<?php echo $content_top; ?>
                    
                            <div class="menu-lk">
							<div class="tit">
								<svg x="0px" y="0px" width="128px" height="128px" viewBox="0 0 128 128" enable-background="new 0 0 128 128" xml:space="preserve" class="ico-hover">
                                    <path d="M118.95,92.012c-3.778-3.777-10.1-7.074-20.066-12.059c-5.024-2.512-13.386-6.691-15.413-8.605
                                            c8.489-10.434,13.416-22.219,13.416-32.535c0-7,0-15.711-3.918-23.48C89.437,8.336,81.544,0,64.002,0
                                            C46.456,0,38.563,8.336,35.035,15.332c-3.923,7.77-3.923,16.48-3.923,23.48c0,10.32,4.923,22.102,13.417,32.535
                                            c-2.032,1.918-10.393,6.098-15.417,8.605c-9.963,4.984-16.285,8.281-20.066,12.059c-8.369,8.375-9.002,22.426-9.045,25.16
                                            c-0.043,2.852,1.059,5.609,3.067,7.648c2,2.031,4.743,3.18,7.595,3.18h106.669c2.86,0,5.596-1.148,7.6-3.18
                                            c2.004-2.039,3.11-4.797,3.067-7.652C127.956,114.438,127.318,100.387,118.95,92.012z M119.235,119.203
                                            c-0.508,0.512-1.184,0.797-1.903,0.797H10.663c-0.707,0-1.398-0.289-1.895-0.797c-0.496-0.504-0.777-1.199-0.77-1.91
                                            c0.023-1.34,0.391-13.305,6.705-19.621c2.915-2.914,9.017-6.074,17.988-10.563c9.576-4.785,14.886-7.637,17.332-9.949l5.399-5.105
                                            l-4.688-5.758c-7.384-9.07-11.623-19.09-11.623-27.484c0-6.473,0-13.805,3.063-19.875C45.842,11.68,53.179,8,64.002,8
                                            c10.814,0,18.159,3.68,21.824,10.934c3.063,6.074,3.063,13.406,3.063,19.879c0,8.391-4.235,18.41-11.628,27.484l-4.688,5.762
                                            l5.4,5.102c2.445,2.309,7.751,5.16,17.331,9.949c8.971,4.484,15.073,7.645,17.988,10.563c5.138,5.137,6.634,14.75,6.704,19.621
                                            C120.009,118.004,119.731,118.699,119.235,119.203z"></path>
                                </svg>
                                <span><?php echo $text_account; ?></span>
                        	</div>
								<ul><?php if (!$logged) { ?>
								<li><a href="<?php echo $login; ?>" class="list-group-item"><?php echo $text_login; ?></a> <a href="<?php echo $register; ?>" class="list-group-item"><?php echo $text_register; ?></a> <a href="<?php echo $forgotten; ?>" class="list-group-item"><?php echo $text_forgotten; ?></a>
								<?php } ?></li>
								<li><a href="<?php echo $account; ?>" class="active"><span><?php echo $text_account; ?></span></a></li>
								<li><a href="<?php echo $wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
								<li><a href="<?php echo $order; ?>"><span><?php echo $text_order; ?></span></a></li>
								 <li><a href="<?php echo $password; ?>"><span><?php echo $text_password; ?></span></a></li>
								<?php if ($logged) { ?>
								<li><a href="<?php echo $logout; ?>"><span><?php echo $text_logout; ?></a></span></li>
								<?php } ?>
								</ul>
                            </div>
                        <div class="personal-body fadeEl fadeEl-right start-anim personal-data">
                           
        
                                <div class="tit"><h3><?php echo $heading_title; ?></h3></div>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
								 <div class="flex">
                              
	<div class="item">
		<div class="form-group">
			<label><?php echo $entry_firstname; ?>:</label>
		   <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
			  <?php if ($error_firstname) { ?>
			  <div class="text-danger"><?php echo $error_firstname; ?></div>
			  <?php } ?>
		</div>
		<div class="form-group">
			<label><?php echo $entry_lastname; ?>:</label>
			<input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
			  <?php if ($error_lastname) { ?>
			  <div class="text-danger"><?php echo $error_lastname; ?></div>
			  <?php } ?>
		</div>
		<div class="form-group">
			<label><?php echo $entry_telephone; ?>:</label>
			 <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
		  <?php if ($error_telephone) { ?>
		  <div class="text-danger"><?php echo $error_telephone; ?></div>
		  <?php } ?>
		</div>
		<div class="form-group">
			<label><?php echo $entry_email; ?>:</label>
			<input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
			  <?php if ($error_email) { ?>
			  <div class="text-danger"><?php echo $error_email; ?></div>
			  <?php } ?>
		</div> </div>
                                       
          <div class="item">
          <?php foreach ($custom_fields as $custom_field) { ?>
          <?php if ($custom_field['location'] == 'account') { ?>
          <?php if ($custom_field['type'] == 'select') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label><?php echo $custom_field['name']; ?></label>
             <div class="select s-w">
              <select name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control form-select">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                <?php if (isset($account_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $account_custom_field[$custom_field['custom_field_id']]) { ?>
                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'radio') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label><?php echo $custom_field['name']; ?></label>
             
                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                <div class="radio">
                  <?php if (isset($account_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $account_custom_field[$custom_field['custom_field_id']]) { ?>
                  <label>
                    <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } else { ?>
                  <label>
                    <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } ?>
                </div>
                <?php } ?>
           
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
            </div>
        
          <?php } ?>
          <?php if ($custom_field['type'] == 'checkbox') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
         
              <div>
                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                <div class="checkbox">
                  <?php if (isset($account_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $account_custom_field[$custom_field['custom_field_id']])) { ?>
                  <label>
                    <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } else { ?>
                  <label>
                    <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
          
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'text') { ?>
          <div class=" form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> " data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label  for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        
              <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
       
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'textarea') { ?>
          <div class="form-group <?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
           
              <textarea name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" rows="5"  id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
           
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'file') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
           
              <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
            </div>
       
          <?php } ?>
          <?php if ($custom_field['type'] == 'date') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        
              <div class="input-group date">
                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
       
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'time') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
           
              <div class="input-group time">
                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
          
          </div>
          <?php } ?>
          <?php if ($custom_field['type'] == 'datetime') { ?>
          <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
       
              <div class="input-group datetime">
                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
              <?php } ?>
           
          </div>
          <?php } ?>
          <?php } ?>
          <?php } ?>
                                   
                                </div></div>
				<div class="btn-group">
				 <a href="<?php echo $back; ?>" class="btn btn-white"><?php echo $button_back; ?></a>

				 <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
				</div> </form>
			</div>
                            
                      
                    </div><!-- .container -->
                </section>
       
      <?php echo $content_bottom; ?>
    <?php echo $column_right; ?>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
/*$('.form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length) {
		$('.form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('.form-group').length) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('.form-group').length) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('.form-group').length) {
		$('.form-group:first').before(this);
	}
});*/
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});
//--></script>
<?php echo $footer; ?>
