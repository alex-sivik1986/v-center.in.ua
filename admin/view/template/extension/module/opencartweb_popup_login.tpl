<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title_form; ?></h1>
      <ul class="breadcrumb">
	  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	  <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
   <?php if ($success!="") { ?>
	 <div class="alert alert-success"><i class="fa fa-check-circle"></i> 
    <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
   <?php } ?>

  <?php if ($error_permission!="") { ?>
   <div class="alert alert-warning"><i class="fa fa-check-circle"></i> 
    <?php echo $error_permission; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
  <?php } ?>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit_popup; ?></h3>
      </div>
      <div class="panel-body">
        <form action="" method="post" enctype="multipart/form-data" id="form-popup-login" class="form-horizontal">
         <ul id="popuplogin" class="nav nav-tabs nav-justified">
            <li class="disabled active"><a href="#tab-language" data-toggle="tab">1. <?php echo $tab_language; ?></a></li>
            <li class="disabled"><a href="#tab-url" data-toggle="tab">2. <?php echo $tab_url; ?></a></li>
            <li class="disabled"><a href="#tab-custom-field" data-toggle="tab">3. <?php echo $tab_register_fields; ?></a></li>
             <li class="disabled"><a href="#tab-social" data-toggle="tab">4. <?php echo $tab_social; ?></a></li>
          </ul>
		  
	<div class="tab-content">
   <div class="tab-pane active" id="tab-language">
		  <div class="form-group required" id="div-login_text">
          <label class="col-sm-2 control-label" for="login_text"><?php echo $entry_login_text; ?></label>
            <div class="col-sm-10">
              <input type="text" name="login_text" value="<?php echo $login_text; ?>" id="login_text" class="form-control" />
            </div>
      </div>
			  
			  <div class="form-group required" id="div-remember_me_text">
				<label class="col-sm-2 control-label" for="remember_me_text"><?php echo $entry_remember_me; ?></label>
				<div class="col-sm-10">
				  <input type="text" name="remember_me_text" value="<?php echo $remember_me_text; ?>" id="remember_me_text" class="form-control" />
				</div>
			  </div>
			   
				<div class="form-group required" id="div-login_footer">
					<label class="col-sm-2 control-label" for="login_footer"><?php echo $entry_login_footer_text; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="login_footer" value="<?php echo $login_footer; ?>" id="login_footer" class="form-control" />
					</div>
				  </div>
				  
				  <div class="form-group required" id="div-register_footer">
					<label class="col-sm-2 control-label" for="register_footer"><?php echo $entry_register_footer_text; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="register_footer" value="<?php echo $register_footer; ?>" id="register_footer" class="form-control" />
					</div>
				  </div>
          <div class="form-group required" id="div-googleloginbuttontext">
          <label class="col-sm-2 control-label" for="googleloginbuttontext"><?php echo $entry_googleloginbuttontext; ?></label>
          <div class="col-sm-10">
            <input type="text" name="googleloginbuttontext" value="<?php echo $googleloginbuttontext; ?>" id="googleloginbuttontext" class="form-control" />
          </div>
          </div>
          <div class="form-group required" id="div-facebookloginbuttontext">
          <label class="col-sm-2 control-label" for="facebookloginbuttontext"><?php echo $entry_facebookloginbuttontext; ?></label>
          <div class="col-sm-10">
            <input type="text" name="facebookloginbuttontext" value="<?php echo $facebookloginbuttontext; ?>" id="facebookloginbuttontext" class="form-control" />
          </div>
          </div>
          <div class="form-group required" id="div-ortext">
          <label class="col-sm-2 control-label" for="ortext"><?php echo $entry_ortext; ?></label>
          <div class="col-sm-10">
            <input type="text" name="ortext" value="<?php echo $ortext; ?>" id="ortext" class="form-control" />
          </div>
          </div>
			<div class="text-right">
                <button type="button" id="button-language" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> <?php echo $button_continue; ?></button>
              </div>
		</div>
		
	   <div class="tab-pane" id="tab-url">
		 
		<div class="form-group required" id="div-login_url">
            <label class="col-sm-2 control-label" for="login_url"><?php echo $entry_login_url; ?></label>
            <div class="col-sm-10">
              <input type="text" name="login_url" value="<?php echo $login_url; ?>" id="login_url" class="form-control" />
            </div>
        </div>
		 
		<div class="form-group required" id="div-register_url">
            <label class="col-sm-2 control-label" for="register_url"><?php echo $entry_register_url; ?></label>
            <div class="col-sm-10">
              <input type="text" name="register_url" value="<?php echo $register_url; ?>" id="register_url" class="form-control" />
            </div>
        </div>

		  <div class="form-group required" id="div-login_redirection">
            <label class="col-sm-2 control-label" for="login_redirection"><?php echo $entry_login_redirection_page; ?></label>
            <div class="col-sm-10">
  		    	<select name="login_redirection" id="login_redirection" class="form-control">
      				 <option value=""></option>
      				 <?php foreach($redirection as $p => $w) { ?>
                 <?php if($p==$login_redirection) { ?>
                    <option value="<?php echo $login_redirection; ?>" selected="selected"><?php echo $w; ?></option>
                 <?php }  else { ?>
                    <option value="<?php echo $p; ?>"><?php echo $w; ?></option>
                <?php } ?>
             <?php } ?>
  			 </select>
            </div>
          </div>	

		  <div class="form-group required" id="div-register_redirection">
            <label class="col-sm-2 control-label" for="register_redirection"><?php echo $entry_register_redirection_page; ?></label>
            <div class="col-sm-10">
            <select name="register_redirection" id="register_redirection" class="form-control">
               <option value=""></option>
               <?php foreach($redirection as $p => $w) { ?>
                 <?php if($p==$register_redirection) { ?>
                    <option value="<?php echo $register_redirection; ?>" selected="selected"><?php echo $w; ?></option>
                 <?php }  else { ?>
                    <option value="<?php echo $p; ?>"><?php echo $w; ?></option>
                <?php } ?>
             <?php } ?>
         </select>
            </div>
          </div>
		              <br />
              <div class="row">
                <div class="col-sm-6 text-left">
                  <button type="button" onclick="$('a[href=\'#tab-language\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> <?php echo $button_back; ?></button>
                </div>
                <div class="col-sm-6 text-right">
                  <button type="button" id="button-url" class="btn btn-primary"><i class="fa fa-arrow-right"></i> <?php echo $button_continue; ?></button>
                </div>
              </div>
		 </div>
		 
<div class="tab-pane" id="tab-custom-field">
   <div class="form-group">
      <div class="col-sm-12">
        <div class="col-sm-4">
  		      <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_customer_group; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($customer_group) { ?>
                      <input type="radio" name="customer_group" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
					  <?php } else { ?>
                      <input type="radio" name="customer_group" value="1" />
                      <?php echo $text_yes; ?>
					  <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$customer_group) { ?>
                      <input type="radio" name="customer_group" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                     <?php } else { ?>
                      <input type="radio" name="customer_group" value="0" />
                      <?php echo $text_no; ?>
                     <?php } ?>
                    </label>
                  </div>
  			       </div>
  			  </div>
          <div class="col-sm-4">
            <div class="form-group">
                  <div class="col-sm-6">
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="customer_groupi" id="customer_groupi" class="form-control icp icp-auto" value="<?php echo $customer_groupi ; ?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
    </div>



    <div class="form-group">
      <div class="col-sm-12">
        <div class="col-sm-4">
  		      <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_firstname; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($firstname) { ?>
                      <input type="radio" name="firstname" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
					  <?php } else { ?>
                      <input type="radio" name="firstname" value="1" />
                      <?php echo $text_yes; ?>
					  <?php } ?>
                    </label>
                    <label class="radio-inline">
                       <?php if (!$firstname) { ?>
                      <input type="radio" name="firstname" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                       <?php } else { ?>
                      <input type="radio" name="firstname" value="0" />
                      <?php echo $text_no; ?>
                     <?php } ?>
                    </label>
                  </div>
  			       </div>
  			  </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                       <?php if ($firstnamer) { ?>
                      <input type="radio" name="firstnamer" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                       <?php } else { ?>
                      <input type="radio" name="firstnamer" value="1" />
                      <?php echo $text_yes; ?>
                     <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$firstnamer) { ?>
                      <input type="radio" name="firstnamer" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="firstnamer" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="firstnamei" id="firstnamei" class="form-control icp icp-auto" value="<?php echo $firstnamei ; ?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
    </div>

    <div class="form-group">
		  <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_lastname; ?></label>
                 <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($lastname) { ?>
                      <input type="radio" name="lastname" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="lastname" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$lastname) { ?>
                      <input type="radio" name="lastname" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="lastname" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($lastnamer) { ?>
                      <input type="radio" name="lastnamer" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="lastnamer" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$lastnamer) { ?>
                      <input type="radio" name="lastnamer" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="lastnamer" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" name="lastnamei" autocomplete="off" id="lastnamei" class="form-control icp icp-auto" value="<?php echo $lastnamei ; ?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
	     </div>

       <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_telephone; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($telephone) { ?>
                      <input type="radio" name="telephone" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="telephone" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$telephone) { ?>
                      <input type="radio" name="telephone" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="telephone" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($telephoner) { ?>
                      <input type="radio" name="telephoner" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="telephoner" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$telephoner) { ?>
                      <input type="radio" name="telephoner" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="telephoner" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="telephonei" id="telephonei" class="form-control icp icp-auto" value="<?php echo $telephonei ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	 <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_fax; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($fax) { ?>
                      <input type="radio" name="fax" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="fax" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$fax) { ?>
                      <input type="radio" name="fax" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="fax" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($faxr) { ?>
                      <input type="radio" name="faxr" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="faxr" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$faxr) { ?>
                      <input type="radio" name="faxr" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="faxr" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="faxi" id="faxi" class="form-control icp icp-auto" value="<?php echo $faxi ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>  
	  

     <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_newsletter; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($newsletter) { ?>
                      <input type="radio" name="newsletter" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="newsletter" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$newsletter) { ?>
                      <input type="radio" name="newsletter" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="newsletter" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($newsletterr) { ?>
                      <input type="radio" name="newsletterr" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="newsletterr" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$newsletterr) { ?>
                      <input type="radio" name="newsletterr" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="newsletterr" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="newsletteri" id="newsletteri" class="form-control icp icp-auto" value="<?php echo $newsletteri ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

       <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_company; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($company) { ?>
                      <input type="radio" name="company" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="company" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$company) { ?>
                      <input type="radio" name="company" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="company" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($companyr) { ?>
                      <input type="radio" name="companyr" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="companyr" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$companyr) { ?>
                      <input type="radio" name="companyr" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="companyr" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="companyi" id="companyi" class="form-control icp icp-auto" value="<?php echo $companyi ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_address_1; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($address_1) { ?>
                      <input type="radio" name="address_1" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_1" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$address_1) { ?>
                      <input type="radio" name="address_1" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_1" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($address_1r) { ?>
                      <input type="radio" name="address_1r" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_1r" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$address_1r) { ?>
                      <input type="radio" name="address_1r" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_1r" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="address_1i" id="address_1i" class="form-control icp icp-auto" value="<?php echo $address_1i ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_address_2; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($address_2) { ?>
                      <input type="radio" name="address_2" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_2" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$address_2) { ?>
                      <input type="radio" name="address_2" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_2" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($address_2r) { ?>
                      <input type="radio" name="address_2r" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_2r" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$address_2r) { ?>
                      <input type="radio" name="address_2r" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="address_2r" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="address_2i" id="address_2i" class="form-control icp icp-auto" value="<?php echo $address_2i ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="form-group">
      <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_city; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($city) { ?>
                      <input type="radio" name="city" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="city" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$city) { ?>
                      <input type="radio" name="city" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="city" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($cityr) { ?>
                      <input type="radio" name="cityr" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="cityr" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$cityr) { ?>
                      <input type="radio" name="cityr" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="cityr" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="cityi" id="cityi" class="form-control icp icp-auto" value="<?php echo $cityi ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_postcode; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($postcode) { ?>
                      <input type="radio" name="postcode" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="postcode" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$postcode) { ?>
                      <input type="radio" name="postcode" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="postcode" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($postcoder) { ?>
                      <input type="radio" name="postcoder" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="postcoder" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$postcoder) { ?>
                      <input type="radio" name="postcoder" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="postcoder" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="postcodei" id="postcodei" class="form-control icp icp-auto" value="<?php echo $postcodei ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>

     
      <div class="form-group">
       <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_zone; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($zone) { ?>
                      <input type="radio" name="zone" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="zone" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$zone) { ?>
                      <input type="radio" name="zone" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="zone" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($zoner) { ?>
                      <input type="radio" name="zoner" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="zoner" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$zoner) { ?>
                      <input type="radio" name="zoner" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="zoner" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="zonei" id="zonei" class="form-control icp icp-auto" value="<?php echo $zonei ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
     </div>

      <div class="form-group">
      <div class="col-sm-12">
        <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $entry_country; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($country) { ?>
                      <input type="radio" name="country" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="country" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$country) { ?>
                      <input type="radio" name="country" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="country" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
                <label class="col-sm-6 control-label"><?php echo $required; ?></label>
                  <div class="col-sm-6">
                    <label class="radio-inline">
                      <?php if ($countryr) { ?>
                      <input type="radio" name="countryr" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="countryr" value="1" />
                      <?php echo $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$countryr) { ?>
                      <input type="radio" name="countryr" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="countryr" value="0" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
               </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label class="col-sm-2 control-label">Icon</label>
              <div class="col-sm-10">
                <div class="input-group">
                  <input data-placement="bottomRight" autocomplete="off" name="countryi" id="countryi" class="form-control icp icp-auto" value="<?php echo $countryi ;?>" type="text" />
                   <span class="input-group-addon"></span>
                  </div>
              </div>
            </div>
          </div>
        </div>
			 </div>

		<br />
           <div class="row">
            <div class="col-sm-6 text-left">
              <button type="button" onclick="$('a[href=\'#tab-url\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> <?php echo $button_back; ?></button>
            </div>
            <div class="col-sm-6 text-right">
               <button type="button" id="button-register-field" class="btn btn-primary"><i class="fa fa-arrow-right"></i> <?php echo $button_continue; ?></button>
			   
            </div>
         </div>  
		</div>
	 
<div class="tab-pane" id="tab-social">
  <div class="panel-heading">
        <h3 class="panel-title">Google Login</h3>
      </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-client_id">Client ID</label>
      <div class="col-sm-10">
      <input type="text" name="google_login_client_id" value="<?php echo $google_login_client_id; ?>" placeholder="Client ID" id="input-client-id" class="form-control"/>
      </div>
      </div>
      <div class="form-group">
      <label class="col-sm-2 control-label" for="input-client-secret">Client Secret</label>
      <div class="col-sm-10">
      <input type="text" name="google_login_client_secret" value="<?php echo $google_login_client_secret; ?>" placeholder="Client Secret" id="input-client-secret" class="form-control"/>
      </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-callback-url">Callback Url</label>
        <div class="col-sm-10">
          <input type="text" name="google_login_callback_url" value="<?php echo $google_login_callback_url; ?>" placeholder="Callback Url" id="input-callback-url" class="form-control" readonly/>
        </div>
      </div>
      
      <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="google_login_status" id="input-status" class="form-control">
			   <?php if ($google_login_status) { ?>
          <option value="1" selected="selected"><?php echo $text_enabled ; ?></option>
          <option value="0"><?php echo $text_disabled; ?></option>
       <?php } else {  ?>
          <option value="1"><?php echo $text_enabled ; ?></option>
          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
         <?php } ?>
              </select>
            </div>
          </div>
  <div class="panel-heading">
        <h3 class="panel-title">Facebook Login</h3>
      </div>

  <div class="form-group">
      <label class="col-sm-2 control-label" for="facebookappid">App ID</label>
      <div class="col-sm-10">
      <input type="text" name="facebookappid" value="<?php echo $facebookappid; ?>" placeholder="Client ID" id="facebookappid" class="form-control"/>
      </div>
      </div>
      <div class="form-group">
      <label class="col-sm-2 control-label" for="facebookappsecret">App Secret</label>
      <div class="col-sm-10">
      <input type="text" name="facebookappsecret" value="<?php echo $facebookappsecret; ?>" placeholder="App Secret" id="facebookappsecret" class="form-control"/>
      </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="facebook_login_callback_url">Callback Url</label>
        <div class="col-sm-10">
          <input type="text" name="facebook_login_callback_url" value="<?php echo $facebook_login_callback_url; ?>" placeholder="Callback Url" id="facebook_login_callback_url" class="form-control" readonly/>
        </div>
      </div>
      <div class="form-group">
            <label class="col-sm-2 control-label" for="facebook_login_status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="facebook_login_status" id="facebook_login_status" class="form-control">
        <?php if ($facebook_login_status) { ?>
          <option value="1" selected="selected"><?php echo $text_enabled ; ?></option>
          <option value="0"><?php echo $text_disabled; ?></option>
        <?php } else {  ?>
          <option value="1"><?php echo $text_enabled ; ?></option>
          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
        <?php } ?>
              </select>
            </div>
          </div>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="module_opencartweb_popup_login_status">Module <?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="module_opencartweb_popup_login_status" id="module_opencartweb_popup_login_status" class="form-control">
                <?php if ($module_opencartweb_popup_login_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else {  ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  
            <br />
           <div class="row">
            <div class="col-sm-6 text-left">
              <button type="button" onclick="$('a[href=\'#tab-custom-field\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> <?php echo $button_back; ?></button>
            </div>
            <div class="col-sm-6 text-right">
               <button type="button" id="button-save" class="btn btn-primary"><i class="fa fa-save"></i> <?php echo $button_save; ?></button>
         
            </div>
         </div>  
</div>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
$('#popuplogin a[data-toggle=\'tab\']').on('click', function(e) {
	return false;
});
</script>

<script>
$("#button-language" ).click(function() {
	var login_text			 = $('#login_text').val(); 
	var register_text		 = $('register_text').val(); 
	var email_address_text	 = $('#email_address_text').val(); 
	var password_text		 = $('#password_text').val(); 
	var remember_me_text	 = $('#remember_me_text').val(); 
	var login_button_text	 = $('#login_button_text').val(); 
	var register_button_text = $('#register_button_text').val(); 
	var googleloginbuttontext = $('#googleloginbuttontext').val(); 
	var facebookloginbuttontext = $('#facebookloginbuttontext').val(); 
	var ortext = $('#ortext').val(); 
	var forgotten_text		 = $('#forgotten_text').val(); 
	var login_footer		 = $('#login_footer').val(); 
	var register_footer		 = $('#register_footer').val(); 	
	
	$.ajax({	
	url:'' ,
	type: 'post',
	crossDomain: true,
	beforeSend: function() {
		$('#button-language').button('loading');
	},
		complete: function() {
		$('#button-language').button('reset');
	},
	success: function(json) {

		if(login_text=="") {
		$('#div-login_text').addClass("form-group required has-error");
		}
		
		if(register_text=="") {
		$('#div-register_text').addClass("form-group required has-error");
		}
		
		if(email_address_text=="") {
		$('#div-email_address_text').addClass("form-group required has-error");
		}
		
		if(password_text=="") {
		$('#div-password_text').addClass("form-group required has-error");
		}		
		
		if(remember_me_text=="") {
		$('#div-remember_me_text').addClass("form-group required has-error");
		}
	
		if(login_button_text=="") {
		$('#div-login_button_text').addClass("form-group required has-error");
		}
	
		if(register_button_text=="") {
		$('#div-register_button_text').addClass("form-group required has-error");
		}	
		
		if(forgotten_text=="") {
		$('#div-forgotten_text').addClass("form-group required has-error");
		}	
		
		if(login_footer=="") {
		$('#div-login_footer').addClass("form-group required has-error");
		}	
		
		if(register_footer=="") {
		$('#div-register_footer').addClass("form-group required has-error");
		}

    if(googleloginbuttontext=="") {
    $('#div-googleloginbuttontext').addClass("form-group required has-error");
    }

    if(facebookloginbuttontext=="") {
    $('#div-facebookloginbuttontext').addClass("form-group required has-error");
    }

    if(ortext=="") {
    $('#div-ortext').addClass("form-group required has-error");
    }
				
		if(login_text!="" && register_text!="" && email_address_text!="" && password_text!="" && remember_me_text!="" && login_button_text!="" && register_button_text!="" && forgotten_text!="" && login_footer!="" && register_footer!="" && googleloginbuttontext!="" && facebookloginbuttontext!="" && ortext!="") { 
		 $('a[href=\'#tab-url\']').tab('show');
		 $('.form-group').removeClass('has-error');
		}
	}
	});
});


$("#button-url" ).click(function() {
	var	login_url			 = $('#login_url').val(); 
	var	register_url		 = $('#register_url').val(); 
	var login_redirection	 = $('#login_redirection').val(); 
	var register_redirection = $('#register_redirection').val(); 
	
	$.ajax({	
	url:'' ,
	type: 'post',
	crossDomain: true,
	beforeSend: function() {
		$('#button-url').button('loading');
	},
		complete: function() {
		$('#button-url').button('reset');
	},
	success: function(json) {
		
		if(login_url=="") {
		$('#div-login_url').addClass("form-group required has-error");
		}

		if(register_url=="") {
		$('#div-register_url').addClass("form-group required has-error");
		}

		if(login_redirection=="") {
		$('#div-login_redirection').addClass("form-group required has-error");
		}	

		if(register_redirection=="") {
		$('#div-register_redirection').addClass("form-group required has-error");
		}	

		if(login_url!="" && register_url!="" && login_redirection!="" && register_redirection!="") { 
		 $('a[href=\'#tab-custom-field\']').tab('show');
		 $('.form-group').removeClass('has-error');
		}
	}
	});	
	
});
</script>

<script type="text/javascript">
$("#button-register-field").click(function() {
 $('a[href=\'#tab-social\']').tab('show');
  }); 
</script>

<script>
$( "#button-save" ).click(function() {
 
  $.ajax({
    url: 'index.php?route=extension/module/opencartweb_popup_login/update&token=<?php echo $token; ?>',
    type: 'post',
    data: $('form').serialize(),
    dataType: 'json',
    beforeSend: function() {
      $('#button-save').button('loading');
    },
    complete: function() {
		$('#button-save').button('reset');
    },
    success: function(json) {
		
		if (json['success']) {
			window.location.href="index.php?route=extension/module/opencartweb_popup_login&token=<?php echo $token; ?>"; 
		}
        
  if (json['error_permission']) {
      window.location.href="index.php?route=extension/module/opencartweb_popup_login&token=<?php echo $token; ?>"; 
    }


    },
    error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});


//--></script>

<style>
.has-error .form-control {
    border-color: #ff0101;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 6px rgba(0, 0, 0, .075);
    font-weight: 700;
}
</style>

<link href="view/popup-login-css/dist/font-awesome.min.css" rel="stylesheet">
<link href="view/popup-login-css/dist/css/fontawesome-iconpicker.min.css" rel="stylesheet">
<script src="view/popup-login-css/dist/js/fontawesome-iconpicker.js"></script>
<button style="display:none" class="btn btn-default action-create"></button>
<script>
    $(function() {
      $('.action-create').on('click', function() {
      $('.icp-auto').iconpicker(); 
      }).trigger('click');
});
 </script>
<?php echo $footer; ?>