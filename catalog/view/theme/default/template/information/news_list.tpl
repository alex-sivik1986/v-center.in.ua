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
<section id="news-page" class="container-1300"> 
                    <div class="row">
					<?php echo $content_top; ?>
                        <div class="l-block">
                            <div class="anim-top start-anim">
                                <h2><?php echo $heading_title; ?></h2>
                            </div>
                            <div class="publications">
							
							<?php foreach ($news_list as $news_item) { ?>
                                <div class="publications-item fadeEl start-anim">
                                	<div class="date"><span class="circle"></span><?php echo $news_item['posted']; ?></div>
                                    <div class="tit"><a href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></div>
									<?php if($news_item['thumb']) { ?>
                                    <div class="img"><img src="<?php echo $news_item['thumb']; ?>" alt=""/></div>
									<?php } ?>	
                                    <div class="txt">
                                    	<?php echo $news_item['description']; ?>
                                    </div>
                                    <div class="more"><a href="<?php echo $news_item['href']; ?>"><?php echo $text_more; ?> <span><svg width="30px" height="8px"><path fill-rule="evenodd" fill="rgb(170, 166, 165)" d="M30.006,4.099 L29.538,4.583 L29.441,4.483 L26.036,8.005 L25.569,7.521 L28.974,3.999 L25.569,0.476 L26.036,-0.008 L29.442,3.515 L29.538,3.415 L30.006,3.898 L29.909,3.999 L30.006,4.099 ZM28.449,4.341 L-0.000,4.341 L-0.000,3.656 L28.449,3.656 L28.449,4.341 Z"></path></svg></span></a></div>
                                </div><!-- item -->
							<?php } ?>	
                                
                                <center>
                                    <nav class="pagination-block">
									<?php echo $pagination; ?>
                                    </nav>
                                </center>
												
                            </div>
                        </div><!-- l-block -->
                        
                      
						<?php echo $column_right; ?>
                           
                       
                    </div>
               </section>
			   
			   

<?php echo $footer; ?>