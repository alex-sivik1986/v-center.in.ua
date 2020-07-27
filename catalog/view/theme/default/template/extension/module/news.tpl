<?php /* if($show_title) { ?>
<h3><?php echo $show_icon ? '<i class="fa fa-newspaper-o fa-3x"></i>&nbsp;' : ''; ?><?php echo $heading_title; ?></h3>
<?php } ?>
<div class="row">
	<?php foreach ($news as $news_item) { ?>
	<div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
		<div class="product-thumb transition">
			<?php if($news_item['thumb']) { ?>
			<div class="image"><a href="<?php echo $news_item['href']; ?>"><img src="<?php echo $news_item['thumb']; ?>" alt="<?php echo $news_item['title']; ?>" title="<?php echo $news_item['title']; ?>" class="img-responsive" /></a></div>
			<?php } ?>
			<div class="caption">
				<h4><a href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a></h4>
				<p><?php echo $news_item['description']; ?></p>
			</div>
			<div class="button-group">
				<button onclick="location.href = ('<?php echo $news_item['href']; ?>');" data-toggle="tooltip" title="<?php echo $text_more; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_more; ?></span></button>
				<button type="button" data-toggle="tooltip" title="<?php echo $news_item['posted']; ?>"><i class="fa fa-clock-o"></i></button>
				<button type="button" data-toggle="tooltip" title="<?php echo $news_item['viewed']; ?>"><i class="fa fa-eye"></i></button>
			</div>
		</div>
	</div>
	<?php } */ ?>
<!--</dssiv>-->

 <div id="news" class="fadeEl fadeEl-right w-50">
                        	<div class="tittle-block"><h2><?=$new_list?></h2></div>
                        	<div class="slider">
                                <div class="header flex"><a href="/news/"><?=$all_news?> <span><svg width="30px" height="8px"><path fill-rule="evenodd"  fill="rgb(170, 166, 165)" d="M30.006,4.099 L29.538,4.583 L29.441,4.483 L26.036,8.005 L25.569,7.521 L28.974,3.999 L25.569,0.476 L26.036,-0.008 L29.442,3.515 L29.538,3.415 L30.006,3.898 L29.909,3.999 L30.006,4.099 ZM28.449,4.341 L-0.000,4.341 L-0.000,3.656 L28.449,3.656 L28.449,4.341 Z"/>
</svg></span></a></div>
                                <div class="swiper">
								
									
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
										<?php  foreach ($news as $news_item) { ?>
                                            <div class="swiper-slide">
                                                <div class="data"><span></span><?php echo $news_item['posted']; ?></div>
                                                <h3><?php echo $heading_title; ?></h3>
                                                <div class="img"><img src="<?php echo $news_item['thumb']; ?>" alt=""/></div>
                                               <p><?php echo $news_item['description']; ?>
											   <br>
											   <br>
                                                <a href="<?php echo $news_item['href']; ?>"><?php echo $text_more; ?> <span><svg width="30px" height="8px"><path fill-rule="evenodd"  fill="rgb(170, 166, 165)" d="M30.006,4.099 L29.538,4.583 L29.441,4.483 L26.036,8.005 L25.569,7.521 L28.974,3.999 L25.569,0.476 L26.036,-0.008 L29.442,3.515 L29.538,3.415 L30.006,3.898 L29.909,3.999 L30.006,4.099 ZM28.449,4.341 L-0.000,4.341 L-0.000,3.656 L28.449,3.656 L28.449,4.341 Z"/>
</svg></span></a>
                                            </div><!-- swiper-slide -->
											<?php } ?>
                                       
                                        </div>
                                    </div>
                                
                                    <div class="nav">
                                        <div class="swiper-button-prev">
                                            <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(157, 44, 44)" d="M21.000,10.635 L0.557,10.635 L10.778,20.811 L10.586,21.002 L0.229,10.691 L0.189,10.730 L-0.003,10.539 L0.037,10.500 L-0.003,10.460 L0.189,10.268 L0.229,10.308 L10.586,-0.003 L10.778,0.188 L0.557,10.364 L21.000,10.364 L21.000,10.635 Z"/></svg>
                                        </div>
                                        <div class="swiper-button-next">
                                            <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M20.963,10.499 L21.002,10.539 L20.907,10.634 L20.907,10.634 L20.906,10.634 L20.811,10.730 L20.771,10.690 L10.413,21.002 L10.221,20.811 L20.443,10.634 L-0.000,10.634 L-0.000,10.364 L20.443,10.364 L10.221,0.187 L10.413,-0.004 L20.771,10.308 L20.811,10.268 L20.907,10.364 L20.907,10.364 L20.907,10.364 L21.002,10.459 L20.963,10.499 Z"/></svg>
                                        </div>
                                    </div>
                                </div>
                                
                                <script>
                                    var nSwiper = new Swiper('#news .swiper-container', {
										//autoplay: {
        //delay: 2500,
        //disableOnInteraction: false,
      //},
                                        navigation: {
                                            nextEl: '#news .swiper-button-next',
                                            prevEl: '#news .swiper-button-prev',
                                        },
                                    });
                                </script>
                            </div>
                        </div><!-- #news -->