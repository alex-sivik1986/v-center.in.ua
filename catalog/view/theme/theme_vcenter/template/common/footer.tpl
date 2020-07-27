  </div><!-- End #wrapper --> 
 <footer>
                <div class="top">
                    <div class="container">
                        <div class="nav">
                            <ul class="flex">
                                 <?php if ($informations) { ?>      
								  <?php foreach ($informations as $information) { ?>
								  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								  <?php } ?>
								<?php } ?>
                                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                <li><a href="/reviews/"><?=$reviews?> </a></li>
                                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
								<li><a href="/pravila-servisa/"><?php echo $text_pravila; ?></a></li>
								<li><a href="/pravila-obrabotki-personalnykh-dannykh/"><?php echo $text_servis; ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--container-->
                </div>
            
                <div class="bot">
                    <div class="container">
                        <div class="flex">
                            
                            <div class="copyright"><?php echo $powered; ?></div>
                        </div>
                    </div>
                </div>
            </footer>
<link href="catalog/view/theme/theme_vcenter/stylesheet/magnific-popup.css" rel="stylesheet" type="text/css">           
<script src="catalog/view/javascript/jquery.magnific-popup.min.js"></script>
<script src="catalog/view/javascript/lightbox.js"></script>
<div class="btn-scrollToTop"><a href="#" class="scrollToTop"><svg width="55.5px" height="55.5px"><path fill-rule="evenodd"  stroke="rgb(0, 0, 0)" stroke-width="1px" stroke-dasharray="8, 4" stroke-linecap="butt" stroke-linejoin="miter" opacity="0.22" fill="rgb(255, 255, 255)"
 d="M27.500,0.499 C42.412,0.499 54.500,12.587 54.500,27.499 C54.500,42.411 42.412,54.499 27.500,54.499 C12.588,54.499 0.500,42.411 0.500,27.499 C0.500,12.587 12.588,0.499 27.500,0.499 Z"/></svg><svg width="20px" height="10px" class="arr"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M20.002,9.823 L19.820,10.001 L10.000,0.390 L0.179,10.001 L-0.003,9.823 L9.818,0.211 L9.780,0.175 L9.962,-0.004 L10.000,0.033 L10.038,-0.004 L10.220,0.175 L10.182,0.211 L20.002,9.823 Z"/></svg></a></div>
        </div>
<div class="modal modal-center modal-small" data-id="#product_add-cart">
	<div class="modal-ov" style="display: none;"></div>
	<div class="modal-content" style="transform: translateY(0px);">
		<span class="close"><svg width="12px" height="12px"><path fill-rule="evenodd" fill="rgb(46, 44, 42)" d="M12.002,10.284 L10.284,12.002 L6.000,7.718 L1.716,12.002 L-0.002,10.284 L4.282,6.000 L-0.002,1.716 L1.716,-0.002 L6.000,4.282 L10.284,-0.002 L12.002,1.716 L7.718,6.000 L12.002,10.284 Z"></path></svg></span>
		<div class="modal-body">
			<div class="flex">
				<div class="img">
					<svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
						<path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0"></path><path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0"></path><path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0"></path>
					</svg>
				</div>
				<div class="tit"><?=$add_to_cart?></div>
			</div>
		</div>
	</div>
</div>
		
		<!--/Main-->
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div class="modal" data-id="#not-wishlist-like">
            <div class="modal-ov" style="display: none;"></div>
            <div class="modal-content m-product_add" style="transform: translateY(0px);">
                <span class="close"><svg width="12px" height="12px"><path fill-rule="evenodd" fill="rgb(43, 43, 43)" d="M11.353,10.646 L10.646,11.353 L6.000,6.707 L1.353,11.353 L0.646,10.646 L5.293,6.000 L0.646,1.353 L1.353,0.646 L6.000,5.293 L10.646,0.646 L11.353,1.353 L6.707,6.000 L11.353,10.646 Z"></path></svg></span>
                <div class="modal-body">
                    <div class="btn-block" style="display:block">
                        <p style="margin-bottom:15px"><?=$wishlist_register?></p>
                     
						<a style="width:49%; float:left" class="btn" href="#member-modal" data-toggle="modal" data-show="register"><?=$text_register?></a>
						
						<a href="#member-modal" class="btn" style="width:49%; float:right" data-toggle="modal" data-show="login"><?=$wishlist_button_register?></a>
                    </div>
                </div><!-- .modal-body -->
            </div>
        </div>
<div class="modal modal-center modal-small" data-id="#product_add-law">
            <div class="modal-ov"></div>
            <div class="modal-content">
                <span class="close"><svg width="12px" height="12px"><path fill-rule="evenodd" fill="rgb(46, 44, 42)" d="M12.002,10.284 L10.284,12.002 L6.000,7.718 L1.716,12.002 L-0.002,10.284 L4.282,6.000 L-0.002,1.716 L1.716,-0.002 L6.000,4.282 L10.284,-0.002 L12.002,1.716 L7.718,6.000 L12.002,10.284 Z"></path></svg></span>
                <div class="modal-body">
                	<div class="flex">
                    	<div class="img">
							<svg viewBox="0 -28 512.001 512" class="ico-hover">
								<path d="m256 455.515625c-7.289062 0-14.316406-2.640625-19.792969-7.4375-20.683593-18.085937-40.625-35.082031-58.21875-50.074219l-.089843-.078125c-51.582032-43.957031-96.125-81.917969-127.117188-119.3125-34.644531-41.804687-50.78125-81.441406-50.78125-124.742187 0-42.070313 14.425781-80.882813 40.617188-109.292969 26.503906-28.746094 62.871093-44.578125 102.414062-44.578125 29.554688 0 56.621094 9.34375 80.445312 27.769531 12.023438 9.300781 22.921876 20.683594 32.523438 33.960938 9.605469-13.277344 20.5-24.660157 32.527344-33.960938 23.824218-18.425781 50.890625-27.769531 80.445312-27.769531 39.539063 0 75.910156 15.832031 102.414063 44.578125 26.191406 28.410156 40.613281 67.222656 40.613281 109.292969 0 43.300781-16.132812 82.9375-50.777344 124.738281-30.992187 37.398437-75.53125 75.355469-127.105468 119.308594-17.625 15.015625-37.597657 32.039062-58.328126 50.167969-5.472656 4.789062-12.503906 7.429687-19.789062 7.429687zm-112.96875-425.523437c-31.066406 0-59.605469 12.398437-80.367188 34.914062-21.070312 22.855469-32.675781 54.449219-32.675781 88.964844 0 36.417968 13.535157 68.988281 43.882813 105.605468 29.332031 35.394532 72.960937 72.574219 123.476562 115.625l.09375.078126c17.660156 15.050781 37.679688 32.113281 58.515625 50.332031 20.960938-18.253907 41.011719-35.34375 58.707031-50.417969 50.511719-43.050781 94.136719-80.222656 123.46875-115.617188 30.34375-36.617187 43.878907-69.1875 43.878907-105.605468 0-34.515625-11.605469-66.109375-32.675781-88.964844-20.757813-22.515625-49.300782-34.914062-80.363282-34.914062-22.757812 0-43.652344 7.234374-62.101562 21.5-16.441406 12.71875-27.894532 28.796874-34.609375 40.046874-3.453125 5.785157-9.53125 9.238282-16.261719 9.238282s-12.808594-3.453125-16.261719-9.238282c-6.710937-11.25-18.164062-27.328124-34.609375-40.046874-18.449218-14.265626-39.34375-21.5-62.097656-21.5zm0 0"></path>
							</svg>
                        </div>
                        <div class="tit"><?=$wishlist_in_cart?></div>
                    </div>
                </div>
            </div>
        </div>
<div class="modal modal-center" id="modal-buyone" data-id="#prod-1"></div>
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script>
<!--
$(document).on("submit", "form#form_buyoneclick", function(event) {

event.preventDefault();  
$.ajax({
	url: 'index.php?route=common/buyoneclick/buy',
	type: 'post',
	data: $('#form_buyoneclick input[type=\'tel\'], #form_buyoneclick input[type=\'hidden\']'),
	success: function(json) {
if(json['success']) {
		$('.error').html('');
$(".modal").removeClass("open");
$("body").removeClass("open-hidden");
$(".modal-content").removeClass('modal');
$(".modal-content").css({'transform':'translateY(0)'});
function func() {
	$(".modal[data-id='#message_sent']").toggleClass('open');
	$(".modal-ov").show("slow");
	$("body").addClass("open-hidden");
				}
setTimeout(func, 300);
						}
						if(json['error']) {
						$('.error').html('');
						$('.error').html(json['error'])
						}
						
						
					},
					
				});

});
$(document).ready(function(){

					$('.quick-btn').on('click', function() {
						var for_post = {};
						let product_id = $(this).attr('data-product_id');
						
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: 'product_id='+product_id,
							success: function(data) {
								//console.log(data);
								$('#modal-buyone').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + " | " + xhr.statusText + " | " + xhr.responseText);
							}
						});
					});	
})					
					//-->

</script>
<script src="catalog/view/javascript/main.js"></script>



       <script>
	   $(document).ready(function() {
            var inputsTel = document.querySelectorAll('input[type="tel"]');
            Inputmask({
              "mask": "+38(999) 999-99-99",
              showMaskOnHover: false
            }).mask(inputsTel);
			});
        </script> 
		  <link href="catalog/view/loginmodule/style.css" rel="stylesheet"/>
<script type="text/javascript" src="catalog/view/loginmodule/register.js"></script>
<?php  if ($googleloginwarning!="" || $facebookloginwarning!="" ) { ?>
<div class="modal fade" id="error_approved" data-backdrop="static"  tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 style="text-align: center;" class="modal-title" id="exampleModalLongTitle"><?php echo $login_title; ?></h3>
        <button style="margin-top:-24px;" type="button" class="close" data-dismiss="modal" aria-label="<?php echo $button_continue; ?>">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="text-align: center;">
        <?php echo $googleloginwarning; ?>
        <?php echo $facebookloginwarning; ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo $button_continue; ?></button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $('#error_approved').modal({'show' : true});
</script>
<?php } ?>

<?php if ($googleloginsuccess!="" || $facebookloginsuccess!="") {?>
<div class="modal fade" id="success" tabindex="-1" data-backdrop="static"  role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 style="text-align: center;" class="modal-title" id="exampleModalLongTitle"><i class="fa fa-user-circle-o form-control-icon" style="font-size:18px"></i> <?php echo $text_edit; ?></h3>
        <button style="margin-top:-24px;" type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
                <label for="socialfirstname" class="control-label"><?php echo $entry_firstname; ?>:</label>
                <input class="form-control" type="text" value="<?php echo $socialfirstname; ?>" class="form-control" id="socialfirstname" placeholder="<?php echo $entry_firstname; ?>">
                 <div id="error-socialfirstname" class="text-danger"></div>
            </div>
            <div class="form-group">
                <label for="sociallastname" class="control-label"><?php echo $entry_lastname; ?>:</label>
                <input class="form-control" type="text" value="<?php echo $sociallastname; ?>" class="form-control" id="sociallastname" placeholder="<?php echo $entry_lastname; ?>">
                <div id="error-sociallastname" class="text-danger"></div>
            </div>
            <div class="form-group">
                <label for="socialtelephone" class="control-label"><?php echo $entry_telephone; ?>:</label>
                <input class="form-control" type="text" value="<?php echo $socialtelephone; ?>" class="form-control" id="socialtelephone" placeholder="<?php echo $entry_telephone; ?>">
                <div id="error-socialtelephone" class="text-danger"></div>
            </div>
            <div class="form-group">
                <label for="socialpassword" class="control-label"><?php echo $entry_password; ?>:</label>
                    <input class="form-control" type="password" value="" class="form-control" id="socialpassword" placeholder="<?php echo $entry_password; ?>">
                     <div id="error-socialpassword" class="text-danger"></div>
            </div>            
            <div class="form-group">
                <label for="socialconfirm" class="control-label"><?php echo $entry_confirm; ?>:</label>
                    <input class="form-control" type="password" value="" class="form-control" id="socialconfirm" placeholder="<?php echo $entry_confirm; ?>">
                    <div id="error-socialconfirm" class="text-danger"></div>
            </div> 
            <div class="form-group">
                <div class="alert alert-success fade in alert-dismissible" id="socialsuccesalertdiv">
                    <a href="#" style="right: 0px;" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                    <strong id="socialalertsuccessmessage"></strong>
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="socialupdate"  data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> <?php echo $button_update; ?>" class="btn btn-primary"><?php echo $button_update; ?></button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
 // $('#success').modal({'show' : true});
</script>
<?php } ?>


<script type="text/javascript">

$("a[href^='<?php echo $login_url; ?>']").each(function()

   { 
    this.href = this.href.replace('<?php echo $login_url; ?>', "#member-modal");
    this.setAttribute('data-toggle', 'modal');
    this.setAttribute('data-show', 'login');
   });
$("a[href^='<?php echo $register_url; ?>']").each(function()

   { 
    this.href = this.href.replace('<?php echo $register_url; ?>', "#member-modal");
    this.setAttribute('data-toggle', 'modal');
    this.setAttribute('data-show', 'register');
   });
</script>
<div class="modal fade" id="member-modal" data-backdrop="static" data-keyboard="false" aria-hidden="true" style="display: none;">

    <div class="modal-dialog">
        <div class="modal-content" style="height: auto;">
		 <button type="button" class="close close-1" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><svg width="10px" height="10px"><path fill-rule="evenodd" fill="rgb(72, 72, 72)" d="M9.986,8.310 L8.310,9.986 L5.000,6.676 L1.689,9.986 L0.013,8.310 L3.323,5.000 L0.013,1.689 L1.689,0.013 L5.000,3.323 L8.310,0.013 L9.986,1.689 L6.676,5.000 L9.986,8.310 Z"></path>
</svg></span></button>
            <div class="modal-body register" style="display: none;">
               
                <div class="modal-header flex">
                    <h3><?php echo $text_register; ?></h3>
					<a class="show-login" href="javascript:;" ><?php echo $have_account; ?></a>
                </div>
                <div class="form-m" >
                     <form>
                        
                            <div class="signupform">
                            <div  id="signup-form">
                                <div style="color: red;font-weight: 700;margin-top: 10px;margin-bottom: 10px;" id="error-warning"></div>
                                <?php if ($customergroup==1) { ?>
                                    <div class="form-group">
                                     <select name="customer_group_id" id="customer_group_id" class="form-control">
                                      <option value=""><?php echo $entry_customer_group; ?> <?php echo $text_select; ?></option>
                                      <?php foreach ($customer_groups as $customer_group) { ?>
                                        <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
									  <?php } ?>
                                      </select>
                                      <i class="fa <?php echo $customergroupi; ?> form-control-icon"></i>
                                        <div id="error-customer_group" class="text-danger"></div>
                                  </div>
                                <?php } else { ?>
                                  <select style="display: none" name="customer_group_id" id="customer_group_id">
                                    <option value="<?php echo $customer_group_id; ?>" selected="selected"></option>
                                  </select>
                                <?php } ?>
								 <div class="form-group">
								 <label for="register-email"><?php echo $your_mail; ?></label>
                                        <input name="register-email" placeholder="<?php echo $entry_mail; ?>" value="" class="form-control" type="text" id="register-email" autocomplete="off" >
                                        
                                         <div id="error-email" class="text-danger"></div>
                                    </div>
                                <?php if ($firstname==1) { ?>
                                    <div class="form-group">
									<label><?php echo $your_name; ?></label>
                                        <input class="form-control" type="text" name="firstname" value="" placeholder="<?php echo $entry_name; ?>" id="firstname"  class="form-control" >
                                       
                                        <div id="error-firstname" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									 <input class="form-control" type="hidden" id="firstname" name="firstname" value="">
									<?php } ?>
									
                                <?php if ($lastname==1) { ?>
                                    <div class="form-group">
									<label><?php echo $your_lastname; ?></label>
                                     <input class="form-control" type="text" name="lastname" value=""  placeholder="<?php echo $entry_lastname; ?>" id="lastname" class="form-control" >
                                        
                                          <div id="error-lastname" class="text-danger"></div>
                                    </div>
                                <?php } else { ?>
									 <input class="form-control" type="hidden" id="lastname" name="lastname" value="">
									<?php } ?>

								<?php if ($city==1) { ?>
                                    <div class="form-group"><label><?php echo $entry_city; ?></label>
                                       <input class="form-control" type="text" name="city" value="" placeholder="<?php echo $entry_city; ?>" id="city" class="form-control" >
                                       
                                        <div id="error-city" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									 <input class="form-control" type="hidden" id="city" name="city" value="">
									<?php } ?>
                                
                                <?php if ($telephone==1) { ?>
                                    <div class="form-group"> <label><?php echo $entry_telephone; ?></label>
                                       <input class="form-control"  type="tel" name="telephone" value="" placeholder="+380 __ ___ __ __" id="telephone" class="form-control" >
                                        
                                        <div id="error-telephone" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									 <input class="form-control" type="hidden" id="telephone" name="telephone" value="">
									<?php } ?>

								<?php if ($fax==1) { ?>
                                    <div class="form-group">
                                       <input class="form-control" type="text" name="fax" value="" placeholder="<?php echo $entry_fax; ?>" id="fax" class="form-control" >
                                        <i class="fa <?php echo $faxi; ?> form-control-icon"></i>
                                        <div id="error-fax" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									 <input class="form-control" type="hidden" id="fax" name="fax" value="">
									<?php } ?>
									
                                <?php if ($company==1) { ?>
                                    <div class="form-group">
                                       <input class="form-control" type="text" name="company" value="" placeholder="<?php echo $entry_company; ?>" id="company" class="form-control" >
                                        <i class="fa <?php echo $companyi; ?> form-control-icon"></i>
                                        <div id="error-company" class="text-danger"></div>
                                    </div>
                                <?php } else { ?>
									 <input class="form-control" type="hidden" id="company" name="company" value="">
									<?php } ?>

                                <?php if ($address_1==1) { ?>
                                    <div class="form-group">
                                       <input class="form-control" type="text" name="address_1" value="" placeholder="<?php echo $entry_address_1; ?>" id="address_1" class="form-control" >
                                        <i class="fa <?php echo $address_1i; ?> form-control-icon"></i>
                                        <div id="error-address_1" class="text-danger"></div>
                                    </div>
                                <?php } else { ?>
									 <input class="form-control" type="hidden" id="address_1" name="address_1" value="">
									<?php } ?>

                                <?php if ($address_2==1) { ?>
                                    <div class="form-group">
                                       <input class="form-control" type="text" name="address_2" value="" placeholder="<?php echo $entry_address_2; ?>" id="address_2" class="form-control" >
                                        <i class="fa <?php echo $address_2i; ?> form-control-icon"></i>
                                        <div id="error-address_2" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									 <input class="form-control" type="hidden" id="address_2" name="address_2" value="">
									<?php } ?>

                               

                                <?php if ($postcode==1) { ?>
                                    <div class="form-group">
                                       <input class="form-control" type="text" name="postcode" value="" placeholder="<?php echo $entry_postcode; ?>" id="postcode" class="form-control" >
                                        <i class="fa <?php echo $postcodei; ?> form-control-icon"></i>
                                        <div id="error-postcode" class="text-danger"></div>
                                    </div>
                               <?php } else { ?>
									 <input class="form-control" type="hidden" id="postcode" name="postcode" value="">
									<?php } ?>

                                <?php if ($country==1) { ?>
                                    <div class="form-group">
                                        <select name="country_id" id="country_id" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($countries as $country) { ?>
                                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?>
										</option>
										<?php } ?> 
                                      </select>
                                        <i class="fa <?php echo $countryi; ?> form-control-icon"></i>
                                        <div id="error-country" class="text-danger"></div>
                                    </div>
								<?php } else { ?>
									<div style="display:none">
										<select name="country_id" id="country_id" class="form-control">
											<option value=""></option>
										</select>
									</div>
									<?php } ?>
									
                                 <?php if ($zone==1) { ?>
                                    <div class="form-group">
                                        <select name="zone_id" id="zone_id" class="form-control">
                                         </select>
                                        <i class="fa <?php echo $zonei; ?> form-control-icon"></i>
                                        <div id="error-zone" class="text-danger"></div>
                                    </div>
                                 <?php } else { ?>
									<div style="display:none">
									<select name="zone_id" id="zone_id" class="form-control">
                                        <option value=""></option>
										</select>
										</div>
									<?php } ?>                             
                                
                                    <div class="form-group"><label><?php echo $entry_password; ?></label>
                                    <div class="password">
                                        <input placeholder="" value=""   class="form-control input-password" type="password" autocomplete="off" name="register-password" id="register-password">
                                      
                                        <div id="error-password" class="text-danger"></div>
                                    </div> </div>
			                     <!-- <div class="form-group"><label><?php echo $entry_confirm; ?></label>
                                    <div class="password">
                                       <input class="form-control input-password" type="password" name="pass-confirm" value=""  autocomplete="off"  placeholder="<?php echo $entry_confirm; ?>" id="pass-confirm"  class="form-control">
                                      
                                        <div id="error-confirm" class="text-danger"></div>
                                    </div>
                                </div>-->

                                <div class="btn-block">
                                 
                                  <?php if ($newsletter==1) { ?>
								  <div class="or" style="text-align: left;margin-bottom: 5px;">
                                    <span style="padding: 0 0px;"><?php echo $text_newsletter; ?></span>
                                </div>
                                  <label class="radio-inline">
                                    <input type="radio" name="newsletter" value="1" checked="checked" />
                                    <?php echo $text_yes; ?></label>
                                  <label class="radio-inline">
                                    <input type="radio" name="newsletter" value="0" />
                                    <?php echo $text_no; ?></label>
								  <?php } ?>
                                                            <div style="margin: 0;    height: 20px;    position: relative;    top: -10px;">
                                <input  type="checkbox" class="custom-control-input" name="remember_me" id="check-e" value="0">
								<label style="width:100%" for="check-e">
                                        <span class="check-block">
                                            <svg width="10px" height="7px" class="ico-check">
                                                <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M9.989,1.341 L4.240,6.988 L4.042,6.793 L3.843,6.988 L0.011,3.224 L1.366,1.893 L4.042,4.521 L8.634,0.010 L9.989,1.341 Z"></path>
                                            </svg>
                                        </span>
                                        <p class="l-p"><?php echo $remember_text; ?></p>
                                    </label>
                              
                            </div>
                                                        
                                    <?php if ($text_agree) { ?>
                                    <div class="row" style="margin:15px auto">
									  <input type="checkbox" id="agree" value="1" />
									<label for="agree" style="width: 20px;">
                                        <span class="check-block">
                                            <svg width="10px" height="7px" class="ico-check">
                                                <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M9.989,1.341 L4.240,6.988 L4.042,6.793 L3.843,6.988 L0.011,3.224 L1.366,1.893 L4.042,4.521 L8.634,0.010 L9.989,1.341 Z"></path>
                                            </svg>
                                        </span>
                                      
                                    </label>
                                     <span style="width:80%"> <?php echo $text_agree; ?></span>
                                      
										
                                         <div id="error-agree" class="text-danger"></div>
                                    
                                    </div>
									<?php } ?>
                                  <center>
                                    <button id="button-register" style="margin-left:0px" name="button-register" class="btn btn-green" type="submit" data-login-text="<i class='fa fa-cog fa-spin'></i>&nbsp;&nbsp;<?php echo $input_register; ?>" data-loading-text="<i class='fa fa-cog fa-spin'></i> <?php echo $input_register; ?>"><?php echo $input_register; ?></button> </center>
                                </div> 
								<div class="via">
                                <div class="tit"><h4><?=$input_login?></h4></div>
								 <button type="button" class="via-f" onclick="fbLogin()" id="facebooklogin" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> <?php echo $facebookloginbuttontext; ?>"> <img src="img/ico/facebook-brands.png" alt="Facebook">Facebook</button>
                               <button type="button" class="via-g" id="googlelogin2" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> <?php echo $googleloginbuttontext; ?>"> <img src="img/ico/google.png" alt="Google">Google</button>
                            </button>
                           
                            </div>
								
								</div> 
                            </div>
                       
                    </form>
                </div>
                
        </div>


                <div class="modal-body login" style="top: 0%;">
                     
                    <div class="modal-header flex"><h3><?php echo $login_title; ?></h3>
					<a href="javascript:;" class="show-register"><?php echo $text_register; ?></a>
					</div>
					 <div class="form-m">
					<form>
                   
                     <div  id="login-form">
                        <div style="color: red;font-weight: 700;margin-top: 10px;margin-bottom: 10px;" id="warning"></div>
                        <div class="form-group hidden" id="reset-password">
                            <label style="width:100%"> <?php echo $text_email; ?></label>
                        </div>
                        <div class="form-group">
						<label> <?php echo $your_mail; ?></label>
                            <input class="form-control" type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                           
                        </div>
                        <div class="form-group">
						 <div class="form-group">
                            <div class="label-flex"><label class="password"> <?php echo $entry_password; ?></label><a class="pull-right reset-password" href="javascript:void(0);"><?php echo $text_forgot; ?></a></div>
						
							
						<div class="password">
						
                            <input class="form-control input-password" type="password" name="password" value=""  id="input-password" class="form-control" />
							
							</div>
                            
                        </div>
                        <div class="flex">
                           <div style="margin: 0;    height: 20px;    position: relative;    top: -10px;">
                                <input  type="checkbox" class="custom-control-input" name="remember_me" id="check-ee" value="0">
								<label style="width:100%" for="check-ee">
                                        <span class="check-block">
                                            <svg width="10px" height="7px" class="ico-check">
                                                <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M9.989,1.341 L4.240,6.988 L4.042,6.793 L3.843,6.988 L0.011,3.224 L1.366,1.893 L4.042,4.521 L8.634,0.010 L9.989,1.341 Z"></path>
                                            </svg>
                                        </span>
                                        <p class="l-p"><?php echo $remember_text; ?></p>
                                    </label>
                              
                            </div>
						 <div class="btn-block"><center>
							 <button id="button-login" name="button-login" class="btn" type="submit" data-login-text="<i class='fa fa-cog fa-spin'></i>&nbsp;&nbsp;<?php echo $text_login; ?>" data-loading-text="<i class='fa fa-cog fa-spin'></i> <?php echo $text_login; ?>"><?php echo $text_login; ?></button>
						<center>
							 </div>
                        </div>
						 <button id="button-forget" name="button-forget" class="btn btn-customerlogin btn-block"  type="submit" data-login-text="<i class='fa fa-cog fa-spin'></i>&nbsp;&nbsp;<?php echo $button_continue; ?>" data-loading-text="<i class='fa fa-cog fa-spin'></i> <?php echo $button_continue; ?>"><?php echo $button_continue; ?></button>
						<div class="via">
                                <div class="tit"><h4><?=$input_login?></h4></div>
								 <button type="button" class="via-f" onclick="fbLogin()" id="facebooklogin" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> <?php echo $facebookloginbuttontext; ?>"> <img src="img/ico/facebook-brands.png" alt="Facebook">Facebook</button>
                               <button type="button" class="via-g" id="googlelogin" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> <?php echo $googleloginbuttontext; ?>"> <img src="img/ico/google.png" alt="Google">Google</button>
                            </button>
                           
                            </div>
                        
                       

                       
                </div>
				</form>
                </div>

            </div><!-- /.modal-content -->

        </div><!-- /.modal-dialog -->

</div><!-- /.modal -->
<div id="divapproved" class="modal fade" role="dialog">
</div>
 <style>
 .b24-widget-button-position-bottom-right {
 right: 35px;
    bottom: 140px;
 }
 </style>
<script>
        (function(w,d,u){
                var s=d.createElement('script');s.async=true;s.src=u+'?'+(Date.now()/60000|0);
                var h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
        })(window,document,'https://cdn.bitrix24.ua/b11124019/crm/site_button/loader_2_z3skb8.js');
</script>

<script type="text/javascript" src="catalog/view/loginmodule/loginregister.js"></script>
<link href="catalog/view/loginmodule/dist/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript">

 $('#googlelogin').on('click', function() {
    var $this = $(this);
    $this.button('loading');
    setTimeout(function() {
       $this.button('reset');
   }, 8000);

    window.location.href="https://accounts.google.com/o/oauth2/auth?&redirect_uri=<?php echo $google_callback_url; ?>&client_id=<?php echo $google_client_id; ?>&scope=https://www.googleapis.com/auth/userinfo.profile+https://www.googleapis.com/auth/userinfo.email&response_type=code&access_type=offline&approval_prompt=auto";

});
 $('#googlelogin2').on('click', function() {
    var $this = $(this);
    $this.button('loading');
    setTimeout(function() {
       $this.button('reset');
   }, 8000);

    window.location.href="https://accounts.google.com/o/oauth2/auth?&redirect_uri=<?php echo $google_callback_url; ?>&client_id=<?php echo $google_client_id; ?>&scope=https://www.googleapis.com/auth/userinfo.profile+https://www.googleapis.com/auth/userinfo.email&response_type=code&access_type=offline&approval_prompt=auto";

});
</script>

<script type="text/javascript">
// Login BUTTON
    $(document).delegate('#button-login', 'click', function(event) {
	event.preventDefault();

    var LoginData = {
        'email': $('#input-email').val(),
        'password': $('#input-password').val()
    };
    $.ajax({

        url: 'index.php?route=loginmodule/login/login',
        type: 'post',
        data: LoginData,
        dataType: 'json',
        beforeSend: function() {
            $('#button-login').button('loading');
        },
        complete: function() {
            $('#button-login').button('reset');
        },

        success: function(json) {
            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#warning').removeClass('hidden');
                $('#warning').css('color','red');
                $('#warning').html(json['error']['warning']);
                $('#email').parent().addClass('has-error');
                $('#password').parent().addClass('has-error');
           }

        },

        error: function(xhr, ajaxOptions, thrownError) {

            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

        }

    });

});
// Forgetten BUTTON
    $(document).delegate('#button-forget', 'click', function(event) {
	event.preventDefault();
    var LoginData = {
        'email': $('#input-email').val()
    };

    $.ajax({
        url: 'index.php?route=loginmodule/login/forgetten',
        type: 'post',
        data: LoginData,
        dataType: 'json',
        beforeSend: function() {
            $('#button-forget').button('loading');
        },

        complete: function() {
            $('#button-forget').button('reset');
        },

        success: function(json) {
            if (json['redirect']) {
                $('#warning').removeClass('hidden');
                $('#warning').css('color','green');
                $('#warning').html(json['redirect']);
                $('#input-email').val('');

            } else if (json['error']) {
                $('#warning').removeClass('hidden');
                $('#warning').css('color','red');
                $('#warning').html(json['error']['warning']);
                $('#email').parent().addClass('has-error');
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }

    });

});

//EDITYOURACCOUTINFORMATION
$('#socialsuccesalertdiv').hide();
$(document).delegate('#socialupdate', 'click', function() {
    $('#error-socialfirstname').hide();   
    $('#error-sociallastname').hide();
    $('#error-socialtelephone').hide();
    $('#error-socialpassword').hide();
    $('#error-socialconfirm').hide();
    $('#socialsuccesalertdiv').hide();

var accountinformation = {
    'firstname'     : $('#socialfirstname').val(),
    'lastname'      : $('#sociallastname').val(),
    'telephone'     : $('#socialtelephone').val(),
    'password'      : $('#socialpassword').val(),
    'confirm'       : $('#socialconfirm').val(),
    'customer_id'   : "<?php echo $customer_id; ?>"
};

    $.ajax({
    url: 'index.php?route=loginmodule/login/AccountInformation',
    type: 'post',
    data: accountinformation,
    dataType: 'json',
    beforeSend: function() {
        $('#socialupdate').button('loading');
    },

    complete: function() {
         $('#socialupdate').button('reset');
    },

     success: function(json) {
            if (json['error']) {
                if(json['error']['firstname']) {
                    $('#error-socialfirstname').show();
                    $('#error-socialfirstname').html(json['error']['firstname']);
                } 

                if(json['error']['lastname']) {
                    $('#error-sociallastname').show();
                    $('#error-sociallastname').html(json['error']['lastname']);
                } 
                if(json['error']['telephone']) {
                    $('#error-socialtelephone').show();
                    $('#error-socialtelephone').html(json['error']['telephone']);
                } 
                if(json['error']['password']) {
                    $('#error-socialpassword').show();
                    $('#error-socialpassword').html(json['error']['password']);
                } 
                if(json['error']['confirm']) {
                    $('#error-socialconfirm').show();
                    $('#error-socialconfirm').html(json['error']['confirm']);
                } 

            } else {

                $('#socialsuccesalertdiv').show();
                $('#socialalertsuccessmessage').html(json['success']);

                } 
        },

         error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

    }

    });

});

//REGISTER BUTTON
 $('#button-register').on('click', function (event) {
 event.preventDefault();
    $('#error-warning').hide();
    $('#error-firstname').hide();   
    $('#error-lastname').hide();
    $('#error-email').hide();
    $('#error-telephone').hide();
	$('#error-fax').hide();
    $('#error-password').hide();
    $('#error-confirm').hide();
    $('#error-agree').hide();
    $('#error-company').hide();
    $('#error-address_1').hide();
    $('#error-address_2').hide();
    $('#error-city').hide();
    $('#error-postcode').hide();
    $('#error-country').hide();
    $('#error-zone').hide();
    $('#error-customer_group').hide();

    var registerdata = {
    'firstname':    $('#firstname').val(),
    'lastname':     $('#lastname').val(),
    'email':        $('#register-email').val(),
    'telephone':    $('input[name="telephone"]').val(),
	'fax':    $('#fax').val(),
    'password':     $('#register-password').val(),
    'confirm':      $('#pass-confirm').val(),
    'newsletter':   $('#newsletter:checked').val(),
    'agree':        $('#agree:checked').val(),
    'company':      $('#company').val(),
    'address_1':    $('#address_1').val(),
    'address_2':    $('#address_2').val(),
    'city':         $('#city').val(),
    'postcode':     $('#postcode').val(),
    'country_id':   $('#country_id option:selected').val(),
    'customer_group_id' : $('#customer_group_id option:selected').val(),
    'zone_id':      $('#zone_id option:selected').val()
    };

    $.ajax({
        url: 'index.php?route=loginmodule/login/register',
        type: 'post',
        data: registerdata,
        dataType: 'json',
        beforeSend: function() {
            $('#button-register').button('loading');
        },
        complete: function() {
            $('#button-register').button('reset');
        },
        success: function(json) {
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

             if (json['error']) {
                if(json['error']['warning']) {
                    $('#error-email').show();
                    $('#error-email').html(json['error']['warning']);
                } 
				<?php if($firstname==1 && $firstnamer==1) { ?>
                if(json['error']['firstname']) {
                    $('#error-firstname').show();
                    $('#error-firstname').html(json['error']['firstname']);
                } 

				<?php } ?>
				
				<?php if($lastname==1 && $lastnamer==1) { ?>
                if(json['error']['lastname']) {
                    $('#error-lastname').show();
                    $('#error-lastname').html(json['error']['lastname']);
                } 
				<?php } ?>
				<?php if($telephone==1 && $telephoner==1) { ?>
                if(json['error']['telephone']) {
                    $('#error-telephone').show();
                    $('#error-telephone').html(json['error']['telephone']);
                } 
				<?php } ?>
				
				<?php if($fax==1 && $faxr==1) { ?>
                if(json['error']['fax']) {
                    $('#error-fax').show();
                    $('#error-fax').html(json['error']['fax']);
                } 
				<?php } ?>
				
                if(json['error']['password']) {
                    $('#error-password').show();
                    $('#error-password').html(json['error']['password']);
                }

                 if(json['error']['confirm']) {
                    $('#error-confirm').show();
                    $('#error-confirm').html(json['error']['confirm']);
                } 
                if(json['error']['agree']) {
                    $('#error-agree').show();
                    $('#error-agree').html(json['error']['agree']);
                } 

				<?php if($company==1 && $companyr==1) { ?>
                if(json['error']['company']) {
                    $('#error-company').show();
                    $('#error-company').html(json['error']['company']);
                } 
				<?php } ?>
				
				<?php if($postcode==1 && $postcoder==1) { ?>
                if(json['error']['postcode']) {
                    $('#error-postcode').show();
                    $('#error-postcode').html(json['error']['postcode']);
                } 
				<?php  } ?>
				
				<?php if($address_1==1 && $address_1r==1) { ?>
                if(json['error']['address_1']) {
                    $('#error-address_1').show();
                    $('#error-address_1').html(json['error']['address_1']);
                }  
				
				<?php } ?>
				
				<?php if($address_2==1 && $address_2r==1) { ?>
                 if(json['error']['address_2'])  {
                    $('#error-address_2').show();
                    $('#error-address_2').html(json['error']['address_2']);
                } 
				<?php } ?>
				
				<?php if($customergroup==1 && $customergroupr==1) { ?>
                if(json['error']['customer_group']) {
                    $('#error-customer_group').show();
                    $('#error-customer_group').html(json['error']['customer_group']);
                } 
				<?php } ?>

				<?php if($country==1 && $countryr==1) { ?>
                if(json['error']['country']) {
                    $('#error-country').show();
                    $('#error-country').html(json['error']['country']);
                }
				<?php } ?>
				
				<?php if($zone==1 && $zoner==1) { ?>
                if(json['error']['zone']) {
                    $('#error-zone').show();
                    $('#error-zone').html(json['error']['zone']);
                }
				<?php } ?>
				
				<?php if($city==1 && $cityr==1) { ?>
                if(json['error']['city']) {
                    $('#error-city').show();
                    $('#error-city').html(json['error']['city']);
                } 
				
				<?php } ?>
				
                if (reg.test($('#register-email').val()) == false) 
                {
                    $('#error-email').show();
                    $('#error-email').html(json['error']['email']);
                    return false;
                }
              else {
                    if(json['error']['email']) {
                    $('#error-email').show();
                    $('#error-email').html(json['error']['email']);
                     }

                }
           } else if(json['redirect'])  {
               location = json['redirect'];
            }

            else {

              $('#divapproved').html('<div class="modal-dialog"><div class="modal-content"><div class="modal-body" style="color: #a94442; font-weight: 700; font-size: 17px;">'+json['text_approval']+'</div><div class="modal-footer"> <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $button_continue; ?></button></div></div></div>');
                $('#member-modal').modal('hide');
                $('#divapproved').modal('show');
             
            }
        },
         error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

    }

    });

});

</script>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {

    $.ajax({
        url: 'index.php?route=account/account/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
            $('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
        },

        complete: function() {
            $('.fa-spin').remove();
        },

        success: function(json) {
          

            html = '<option value=""  selected="selected"><?php echo $text_select; ?></option>';
            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '">' + json['zone'][i]['name'] + '</option>';
                }

            } else {
                html += '<option value="0"><?php echo $text_none; ?></option>';
            }

            $('select[name=\'zone_id\']').html(html);

        },

        error: function(xhr, ajaxOptions, thrownError) {

            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

        }

    });

});

$('select[name=\'country_id\']').trigger('change');
</script>

<?php if ($facebook_app_id) { ?>
<script type="text/javascript"> window.fbAsyncInit = function()
    {FB.init ({appId:<?php echo $facebook_app_id; ?>, cookie: true, xfbml : true, version : 'v2.11'});};
    </script> 
<script type="text/javascript">

(function(d, s, id){
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "https://connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
function fbLogin() {
    FB.login(function (response) {
        if (response.authResponse) {
            getFbUserDetails();
        } else {
        document.getElementById("fbloginstatus").innerHTML = '<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> User has cancelled the Facebook Authorization.</div>';
        }
    }, {scope: 'email'});
  
}
function getFbUserDetails(){
    FB.api('/me', {fields: 'id,first_name,last_name,email,link,gender,locale,picture'},function (response) {
    if (response.error) {
            console.log(JSON.stringify(response.error));
      document.getElementById("fbloginstatus").innerHTML = '<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i>'+JSON.stringify(response.error)+'</div>';
        }
    else if(typeof response.email == 'undefined' || response.email.length == 0)
    {
      document.getElementById("fbloginstatus").innerHTML = '<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i>Facebook did not retrive your email, So Please try with other facebook account!</div>';
    }
    else
    {   
      try{
        $.ajax({
          url: 'index.php?route=loginmodule/facebooklogin/login',
          type: 'post',
          data: { email: response.email, firstname: response.first_name, lastname: response.last_name,password:"" },
          dataType: 'json',
          beforeSend: function() {
            //Todo
          },
          complete: function() {

          },
          success: function(json) {
            location = json['redirect'];
          },
          error: function(jqXHR, exception) {
            console.log(jqXHR.status);
            console.log(exception);    
          }                 
        });
      }
      catch (e) {
        console.log(e);
      }        
    }   
   });
}
</script>
<?php } ?>
</body></html>