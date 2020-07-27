<?php echo $header; ?>
 <section id="bread-crumbs">
                    <div class="container-1300">
         <ul>
		 <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		 <?php if(empty($breadcrumb['href'])) { ?>
			<li><span><?php echo $breadcrumb['text']; ?></span></li>
		 <?php } else {  ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>

		 <?php } } ?>
		</ul>
                    </div><!-- .container -->
 </section>
<section id="reviews" class="container-1300"> 
                    <div class="anim-top start-anim">
                        <center>
                            <div class="tit-page"><h1><?=$heading_title?></h1></div>
                        </center>
                    </div>
                    <div class="reviews container-920">
					<?php if ($review_status) { ?>
                        <div id="review"></div>
						
						
					<?php } ?>
					
					</div>
					
					 <div class="new-reviews container-920">
                        <div class="block">
                        <div class="tit">
                            <h2><?php echo $text_write; ?></h2>
                        </div>
                        <form id="form-review">
                            <div class="form-group required">
                                <label><?=$your_name?>:</label>
								<input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" placeholder="<?=$entry_name?>" class="form-control"/>
                               
                            </div>
                            <div class="form-group">
                                <label><?=$your_lastname?>:</label>
                                <input type="text" name="lastname" value="<?php echo $last_name; ?>" id="input-name" placeholder="<?=$entry_lastname?>" class="form-control"/>
                            </div>
                            <div class="form-group  required">
                                <label><?=$your_mail?>:</label>
                                <input class="form-control" name="mail" value="<?php echo $email; ?>" placeholder="<?=$entry_mail?>" type="email">
                            </div>
                            <div class="form-group  required">
                                <label><?=$your_review?>:</label>
                                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>

                                   
                            </div>
							<?php if (isset($site_key) && $site_key) { ?>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                                    </div>
                                </div>
                            <?php } elseif (isset($captcha) && $captcha) { ?>
                                <?php echo $captcha; ?>
                            <?php } ?>
                            <div class="bnt-block">
							 <button type="button" id="button-review"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                           class="btn"><?php echo $button_review; ?></button>
                                
                            </div>
                        </form>
                        </div>
                    </div>
					</section>

   
       <!-- 
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <h1><?php echo $heading_title; ?></h1>
                <form class="form-horizontal" id="form-review">
                    <?php if ($review_status) { ?>
                        <div id="review"></div>
                        <?php if ($review_guest) { ?>
                            <h2><?php echo $text_write; ?></h2>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control"/>
                                </div>
                            </div>

                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>

                                    <div class="help-block"><?php echo $text_note; ?></div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="control-label" style="padding-left: 15px;"><?php echo $entry_rating; ?></label>
                                <input type="hidden" id="rait-input" name="rating" value="1"/>
                                &nbsp;&nbsp;&nbsp;
                                <span><?php echo $entry_bad; ?></span>
                                <div class="col-sm-12  ">
                                    <div class="rating-block" data-clicked="0">
                                    <div class="rating">
                                        <div class="star-item item-1 "  data-item="1"></div>
           <div class="star-item item-2 " data-item="2"></div>
           <div class="star-item item-3 "  data-item="3"></div>
            <div class="star-item item-4 "  data-item="4"></div>
           <div class="star-item item-5 "  data-item="5"></div>
                                    </div>
                                    <div class="sel-items">
                                    <div class="star-item item-1 "  data-item="1"></div>
           <div class="star-item item-2 " data-item="2"></div>
            <div class="star-item item-3 "  data-item="3"></div>
            <div class="star-item item-4 "  data-item="4"></div>
           <div class="star-item item-5 "  data-item="5"></div>
                                    </div>
                                    </div>



                                </div>
                                <span> <?php echo $entry_good; ?></span>
                            </div>
                            <?php if (isset($site_key) && $site_key) { ?>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                                    </div>
                                </div>
                            <?php } elseif (isset($captcha) && $captcha) { ?>
                                <?php echo $captcha; ?>
                            <?php } ?>
                            <div class="buttons clearfix">
                                <div class="pull-right">
                                    <button type="button" id="button-review"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                            class="btn btn-primary"><?php echo $button_continue; ?></button>
                                </div>
                            </div>
                        <?php } else { ?>
                            <?php echo $text_login; ?>
                        <?php } ?>
                    <?php } ?>
                </form>-->
                <?php echo $content_bottom; ?>
            <?php echo $column_right; ?>

        <script type="text/javascript">
           jQuery(document).ready(function($){
/*
                $('#form-review .rating-block  label ').on('click', function () {
                    console.log(222222222);
                    $(this).prev(' .fa-stack-2x  ').css('color','#FC0!important');

                });*/

               $('.rating-block .star-item').on({mousemove: function () {
                   var parent = $(this).closest('.rating-block');
                   var num = $(this).index()+1;
                   if(num>parent.data('clicked')) {
                       parent.removeClass('sel-0 sel-1 sel-2 sel-3 sel-4 sel-5');
                       parent.addClass('sel-' + num);
                   }


               }, mouseleave: function () {
                   var parent = $(this).closest('.rating-block');
                   var num = $(this).index()+1;
                   if(num>parent.data('clicked')) {

                       parent.removeClass('sel-0 sel-1 sel-2 sel-3 sel-4 sel-5');
                       parent.addClass('sel-' + parent.data('clicked'));

                   }

               }, click: function () {
                   var parent = $(this).closest('.rating-block');
                   var num = $(this).index()+1;
                   parent.removeClass('sel-0 sel-1 sel-2 sel-3 sel-4 sel-5 ');
                   parent.addClass('sel-'+num);
                   parent.data('clicked',num);
                   $('#rait-input').prop('value',num);

               }

               });
            });
            $('#form-review').delegate('.pagination a', 'click', function (e) {
                e.preventDefault();
                $('#form-review').load(this.href);
            });
            $('#review').load('index.php?route=review/store_review/review');


            $('#button-review').on('click', function () {
                $.ajax({
                    url: 'index.php?route=review/store_review/write',
                    type: 'post',
                    dataType: 'json',
                    data: $("#form-review").serialize(),
                    beforeSend: function () {
                        if ($("textarea").is("#g-recaptcha-response")) {
                            grecaptcha.reset();
                        }
                        $('#button-review').button('loading');
                    },
                    complete: function () {
                        $('#button-review').button('reset');
                    },
                    success: function (json) {
                        $('.alert-success, .alert-danger').remove();
                        if (json['error']) {
                            $('#form-review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                        }
                        if (json['success']) {
                            $('#form-review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                            $('input[name=\'name\']').val('');
							$('input[name=\'lastname\']').val('');
							$('input[name=\'mail\']').val('');
                            $('textarea[name=\'text\']').val('');
                            $('input[name=\'rating\']:checked').prop('checked', false);
                        }
                    }
                });
            });

          </script>
    
<?php echo $footer; ?>