 <div class="anim-top start-anim">
                                <h2><?php echo $heading_title; ?></h2>
                            </div>
                            <div class="news">
							<?php  foreach ($news as $news_item) { ?>
                                <div class="news-item fadeEl start-anim">
                                	<div class="date"><span class="circle"></span><?php echo $news_item['posted']; ?></div>
                                    <div class="tit"><a href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></div>
                                    <div class="img"><img src="<?php echo $news_item['thumb']; ?>" alt=""/></div>
                                    <div class="txt">
                                    	 <?php echo $news_item['description']; ?>
                                    </div>
                            	</div><!-- item -->
                            <?php } ?>
                               
                            </div>