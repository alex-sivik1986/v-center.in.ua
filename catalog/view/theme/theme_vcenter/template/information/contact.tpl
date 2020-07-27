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


<section id="contact" class="container-1300"> 
                    <div class="anim-top start-anim tit-page">
                        <center>
                            <h1><?php echo $heading_title; ?></h1>
                        </center>
                    </div>
                    
                    <div class="contact_top flex contact_txt">
                        <div class="txt l-block">
						<?php $location=current($locations);   ?>
                            <div class="tit"><?=$location['name']?></div>
							<?php if(!empty($location['address'])) { ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/map.png" alt=""/></div>
                                <div><p><?=$location['address']?></p></div>
                            </div>
							<?php } ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/phone.png" alt=""/></div>
                                <div><?=$location['telephone']?></div>
                            </div>
							<?php if(!empty($location['fax'])) { ?>
                       <div class="item">
                                <div class="img"><img src="img/ico/mail.png" alt=""/></div>
                                <div>
                                	<p> <?=$location['fax']?></p>
                                </div>
                            </div>
						<?php } ?>
                        </div>
					
					<?php $location=next($locations);   ?>
					 <div class="txt">
                            <div class="tit"><?=$location['name']?></div>
								<?php if(!empty($location['address'])) { ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/map.png" alt=""/></div>
                                <div><p><?=$location['address']?></p></div>
                            </div>
							<?php } ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/map.png" alt=""/></div>
                                <div>
                                	<?=$location['telephone']?>
                                </div>
                            </div>
                          	<?php if(!empty($location['fax'])) { ?>
                       <div class="item">
                                <div class="img"><img src="img/ico/mail.png" alt=""/></div>
                                <div>
                                	<p> <?=$location['fax']?></p>
                                </div>
                            </div>
						<?php } ?>
                        </div>
					
                    </div><!-- contact_top -->
                    
                    <div class="contact_map">
                        <div class="img-mob"><img src="img/contact2.png" alt=""/></div>
                        <div class="marker marker-1"><span class="circle"></span><?=$lviv?></div>
                        <div class="marker marker-2"><span class="circle"></span><?=$harkiv?></div>
                        <div class="marker marker-3"><span class="circle"></span><?=$dnepr?></div>
                        <div class="marker marker-4"><span class="circle"></span><img src="img/logo.png" alt=""/></div>
                    </div>
                    
                    <div class="contact_feedback">
                        <div class="tit">
                            <h2><?=$contact_form?></h2>
                            <p><?=$text_form?></p>
                        </div>
						
						
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
   
        
          <div class="form-group">
            <label  for="input-name"><?php echo $your_name; ?></label>
           
              <input type="text" name="name" placeholder="<?php echo $your_name; ?>" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
          
          </div>
		  <div class="form-group">
            <label  for="input-phone"><?php echo $your_telephone; ?></label>
            
              <input placeholder="+380 __ ___ __ __" type="tel" name="phone" value="<?php echo $phone; ?>" id="input-phone" class="form-control" />
              
        
          </div>
          <div class="form-group">
            <label  for="input-email"><?php echo $your_mail; ?></label>
            
              <input type="text" name="email" placeholder="<?php echo $entry_mail; ?>" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
        
          </div>
          <div class="form-group">
            <label  for="input-enquiry"><?php echo $entry_enquiry; ?></label>
           
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
           
          </div>
          <?php echo $captcha; ?>
      
       
          <div class="bnt-block">
            <input class="btn" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
  
      </form>
                    </div>
                     
                    <div class="contact_bottom flex contact_txt">
					<?php //$location=next($locations); 
					$m =0;
					while($location=next($locations) ) { 
					?>
				
                        <div class="txt">
                            <?php if(!empty($location['name'])) { ?>
                        <center> 
                        	<div class="tit"><?=$location['name']?></div>
                        </center>
					<?php } ?>
								<?php if(!empty($location['address'])) { ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/map.png" alt=""/></div>
                                <div><p><?=$location['address']?></p></div>
                            </div>
							<?php } ?>
                            <div class="item">
                                <div class="img"><img src="img/ico/map.png" alt=""/></div>
                                <div>
                                	<?=$location['telephone']?>
                                </div>
                            </div>
                          	<?php if(!empty($location['fax'])) { ?>
                       <div class="item">
                                <div class="img"><img src="img/ico/mail.png" alt=""/></div>
                                <div>
                                	<p> <?=$location['fax']?></p>
                                </div>
                            </div>
						<?php } ?>
                        </div>
						<?php ++$m; } ?>
						
                    </div><!-- contact_bottom -->
					
				
               </section>



<!--<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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
      <h3><?php echo $text_location; ?></h3>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_contact; ?></legend>
          <div class="form-group required">
            <label  for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label  for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label  for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>-->
 <?php echo $content_bottom; ?>
<?php echo $footer; ?>
