<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content" >
<section id="prod-filter">
 <div id="video-bg">
<!--<video preload="auto" loop="loop" autoplay muted="muted">
	<source src="/image/video.mp4#t=1,5" type="video/mp4">
</video>-->
   <?php echo $content_top; ?>
</div>
                  <!--  <div class="anim-top start-anim">
                        <center>
                        
                        </center>
                    </div>-->
                    
                    <div class="filter flex">
                        <ul class="flex">
						<?php if($categories) {  $m = 1;
						foreach ($categories as $cat) { ?>

						<?php if(empty($cat['children'])) {  ?>
						
						    <li><a href="<?=$cat['href']?>" class="ico ico<?=$m?>"><?=$cat['name']?></a></li>        
						<?php } else { $kat = $m; ?>
						    <li class="leather-kat" data-id="leather-<?=$kat?>">
						   <div class="ico ico<?=$m?>"><?=$cat['name']?></div>
						   <div class="line">
                                    <div class="circle-block">
                                        <span class="line-bg"></span>
                                        <span class="circle"></span>
                                        <span class="line-bg"></span>
                                    </div>
                           </div></li>  
						<? } ++$m; } ?>					
						<?php } ?>
                        </ul>
                    </div><!--product-filter-->
                    
                    <div class="prod-filter" data-id="leather-<?=$kat?>">
					<?php foreach ($categories as $cat) { ?>
						<?php if(!empty($cat['children'])) { ?>
						  <div class="tittle-block">
                        	<center>
                                <h2><?=$cat['name']?></h2>
                            </center>
                        </div>
						   <div class="flex">
						   <?php foreach($cat['children'] as $child) { ?>
                            <div class="item">
                                <div class="img"><img src="<?=$child['image']?>" alt=""></div>
                                <div class="tit"><?=$child['name']?></div>
                                <a href="<?=$child['href']?>" class="link"></a>
                            </div>
							
						   <?php } ?>
                        </div>
						<? }   } ?>	
                    </div>
                    
                    <script>
						$(document).on("ready", function () {
							$("#prod-filter .filter li.leather-kat").click(function () {
								
								$("#prod-filter .filter li.leather-kat").toggleClass('active');
								
							
								var prodfilter = $(this).data("id");
								$(".prod-filter[data-id='"+prodfilter+"']").slideToggle('normal');
				
								$('html, body').animate({
								   scrollTop: $(".prod-filter").offset().top
								}, 2000);
				
							});
						});
					</script>
                </section>
<?php echo $modules[5];
	
						 ?>    
<section class="form-transform">
<?php echo $content_bottom; ?>
</section>
 <section id="advantages-news">
                    <div class="container flex">
                           <?php echo $modules[4];
						         echo $modules[3];
						 ?>                 
                    </div>
                </section>
    <section id="our-partners">
                    <div class="container flex">
<?php
echo $modules[2];
echo $modules[1];
						 ?>  
 </div>
 
                </section>
		<?php

echo $modules[0];
						 ?>		
</div>
<?php  if(!empty($slider)) { 
$m = 1;	foreach ($slider as $slide) {  if(!empty($slide['video'])) { ?>
		 <div class="modal vid-mod" id="vid-<?=$m?>" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                 
                  <?php print_r(html_entity_decode($slide['video']));  ?>

                </div>
            </div>
        </div><!-- END  modal -->
	<? } ++$m;	}
}
 ?>

<?php echo $footer; ?>