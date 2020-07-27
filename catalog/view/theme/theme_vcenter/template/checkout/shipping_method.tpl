<?php if ($error_warning) { ?>
<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>

<?php } ?>
<div class="form-flex checkbox-flex">
<?php if ($shipping_methods) { ?>

<?php foreach ($shipping_methods as $shipping_method) { ?>

<?php if (!$shipping_method['error']) { ?>
<?php foreach ($shipping_method['quote'] as $quote) { ?>
<?php if($quote['code'] == 'novaposhta.novaposhta') {   ?>

 <div class="checkbox delivery-post">
<?php } else { ?>
 <div class="checkbox delivery-pickup">
<?php } ?>

    <?php if ($quote['code'] == $code || !$code) { ?>
    <?php $code = $quote['code']; ?>
    <input type="radio" class="custom-control-input" id="radio-<?php echo $quote['code']; ?>" name="shipping_method" value="<?php echo $quote['code']; ?>" checked="checked" />
	<label for="radio-<?php echo $quote['code']; ?>">
                                                <span class="check-block">
                                                    <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd"  stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)"
                                 d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"/></svg>
                                 <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd"  fill="rgb(59, 53, 53)"
                                 d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"/></svg>
                                                 </span> <?php echo $quote['title']; ?>
                                            </label>
    <?php } else { ?>
    <input type="radio" name="shipping_method" id="radio-<?php echo $quote['code']; ?>" value="<?php echo $quote['code']; ?>" />
	<label for="radio-<?php echo $quote['code']; ?>">
                                                <span class="check-block">
                                                    <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd"  stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)"
                                 d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"/></svg>
                                 <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd"  fill="rgb(59, 53, 53)"
                                 d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"/></svg>
                                                 </span> <?php echo $quote['title']; ?>
                                            </label>
    <?php } ?>
  
</div>
<?php } ?>
<?php } else { ?>
<div class="alert alert-danger"><?php echo $shipping_method['error']; ?></div>
<?php } ?>
<?php } ?>
<?php } ?>
</div>

<!--<p style="display:none">
  <textarea name="comment" rows="8" class="form-control"><?php echo $comment; ?></textarea>
</p>-->
<div style="display:none" class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
  </div>
</div>
