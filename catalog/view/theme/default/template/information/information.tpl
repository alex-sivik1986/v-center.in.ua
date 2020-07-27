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


<section id="delivery" class="container-1300"> <div id="text-page">
                    <div class="anim-top start-anim tit-page">
                        <center>
                            <h1><?php echo $heading_title; ?></h1>
                        </center>
                    </div>
                    <div class="delivery_top flex">
					<?php echo $column_left; ?>
					 <?php echo $description; ?>
					   <div class="r-block fadeEl start-anim ">
					  <?php echo $column_right; ?>
					      
                        </div>
				
						
                        
                    </div>
					<?php if(!empty($description2)) { ?>
                     <div class="delivery_bottom flex fadeEl ">
                        <?php echo $description2; ?>
                       </div>
					   <?php } ?>
					
                    <?php echo $content_bottom; ?>
					</div>
               </section>


<?php echo $footer; ?>