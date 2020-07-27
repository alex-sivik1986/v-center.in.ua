<?php if ($error_warning) { ?>
<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<?php foreach ($payment_methods as $payment_method) { ?>

<div class="checkbox">

    <?php if ($payment_method['code'] == $code || !$code) { ?>
    <?php $code = $payment_method['code']; ?>
    <input type="radio" name="payment_method" id="radio-<?php echo $payment_method['code']; ?>" class="custom-control-input" value="<?php echo $payment_method['code']; ?>" checked="checked" />
	
    <?php } else { ?>
  <input type="radio" class="custom-control-input" value="<?php echo $payment_method['code']; ?>" id="radio-<?php echo $payment_method['code']; ?>" name="payment_method">
                                        
    <?php } ?>
	
	<label for="radio-<?php echo $payment_method['code']; ?>">
                                            <span class="check-block">
                                                <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd"  stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)"
                             d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"/></svg>
                             <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd"  fill="rgb(59, 53, 53)"
                             d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"/></svg>
                                             </span>  <?php echo $payment_method['title']; ?>
                                        </label>
    <?php /* echo $payment_method['title']; ?>
    <?php if ($payment_method['terms']) { ?>
    (<?php echo $payment_method['terms']; ?>)
    <?php } ?>
    <?php if (isset($payment_method['description'])) { ?>
    <br /><small><?php echo $payment_method['description']; ?></small>
    <?php }*/ ?>

</div>
<?php } ?>
<?php } ?>
<!--<p><strong><?php echo $text_comments; ?></strong></p>
<p>
  <textarea name="comment" rows="8" class="form-control"><?php echo $comment; ?></textarea>
</p>
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="pull-right"><?php echo $text_agree; ?>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    &nbsp;
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
  </div>
</div>
<?php } ?>-->
