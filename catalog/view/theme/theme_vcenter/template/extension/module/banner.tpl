<?php if($theme=='default') { ?>
<div id="banner<?php echo $module; ?>" class="owl-carousel">
  <?php $m = 1; foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /><div class="caption-slide tittle-block"><h2><?php echo $banner['description']; ?></h2></div>
	<div class="button-slide"><a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a></div>
    <?php } else { ?>
	  <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /><div class="caption-slide tittle-block"><h2><?php echo $banner['description']; ?></h2></div>
	 
	<div class="button-slide"> <div class="img" style="     cursor: pointer;
   display: initial;" data-toggle="modal" data-target="#vid-<?=$m?>"><span class="button_slide"><?php echo $banner['title']; ?></span></div></div>
	
	
    <?php } ?>
  </div>
     
  <?php ++$m; } ?>
 
</div>
<?php
$count = 24 - (24 - 48/($m-1)); 

?>
<style>
.button_slide {
	border-radius: 7px; 
	background-color: #bd1e24; 
	color: white; 
	font-size: 22px;
	padding: 12px;
    padding-left: 60px;
	padding-right: 60px;
}
@media (max-width:600px) {
.button_slide {
	border-radius: 7px; 
	background-color: #bd1e24; 
	color: white; 
	font-size: 18px;
	padding: 10px;
    padding-left: 20px;
	padding-right: 20px;
}

}
.item .img-responsive {
	margin:0 auto;
	width:100%;
	
}
.modal-content iframe {
	top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
.modal-dialog, .vid-mod .modal-content {
	 width: 100%;
	 height: inherit;
}
.modal-open .modal {
    overflow-x: hidden;
    overflow-y: overlay;
}
.modal-dialog {
	margin:0px;
}
@media (max-width: 600px) {
	.modal-dialog, .vid-mod .modal-content {
	 width: 100%;
	 height: auto;
}
	
}
@media (min-width: 901px) {
	.owl-controls .owl-buttons .owl-next {
		    left: calc(<?=$count?>% + 1%/7);
	}
	
}
</style>
<script type="text/javascript">
$('#banner<?php echo $module; ?>').owlCarousel({
		items: 6,
	autoPlay: 7000,
	singleItem: true,
	transitionStyle: 'fade',
	loop:true,
	  navigation: true,
    navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    pagination: true
    
});
</script>

		
<!--<style>
 html, body {
      position: relative;
      height: 100%;
    }
    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
 .swiper-container {
    width: 100%;
    height: 69%;
}

 .swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
}

 .swiper-slide img {
  display:block;
    width: 100%;
    height: auto;
    -ms-transform: translate(-50%, -50%);
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    margin-left: auto;
      margin-right: auto;
}
</style>

<div class="swiper-container">
  <div class="swiper-wrapper">
								<?php if ($banners) { ?>
								
								<?php foreach($banners as $banner) { ?>
                                    <div class="swiper-slide">
                                <div class="txt">
									<img src="<?=$banner['image']?>" alt=""/>
                                            
                                  <a href="<?=$banner['link']?>"> <?=$banner['title']?></a>
                                               
                                        
                                           </div>
                                      
                                    </div>
									
									<?php } ?>
								<?php } ?>
								
			</div>
			                    <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
		</div>


	<script>
                            var sSwiper = new Swiper(' .swiper-container', {
                                spaceBetween: 30,
								
      pagination: {
        el: ' .swiper-pagination',
        clickable: true,
      },
                            });
							

                        </script>
-->

<?php } ?>
<?php if($theme=='benefits') {   ?>
 <div id="advantages" class="fadeEl fadeEl-left w-50">
                            <div class="tittle-block"><h2><?=$benefits?></h2></div>
                            <div class="slider">
                                <div class="swiper">
                                    <div class="nav">
                                        <div class="swiper-thumbnails">
										 <?php $m = 0; foreach ($banners as $banner) { ?>
                                            <button type="button"><?php echo $banner['title']; ?></button>
											  <?php   ++$m; } ?>
                                        </div>
										
                                    </div>
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
										 <?php foreach ($banners as $banner) { ?>
                                            <div class="swiper-slide">
                                                <?php echo $banner['description']; ?>
                                            </div>
											 <?php } ?>
                                        </div>
                                    </div>
                                </div>                              
                                <script>
var aSwiper = new Swiper('#advantages .swiper-container', {
	autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
	  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  on: {
    init() {
      this.el.addEventListener('mouseenter', () => {
        this.autoplay.stop();
      });

      this.el.addEventListener('mouseleave', () => {
        this.autoplay.start();
      });
    }
  }
});
                                    swiperThumbs(aSwiper, {
                                        scope: '#advantages .swiper',
                                        element: 'swiper-thumbnails'
                                    });
                                </script>
                            </div>
                        </div><!-- #advantages -->
<?php } ?>
<?php if($theme=='partners') {  ?>
<div class="partners fadeEl fadeEl-left w-50">
                            <div class="tittle-block"><h2><?=$our_partners?></h2></div>
                            <div class="slider">
                                <div class="swiper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
										 <?php foreach ($partners as $partner) { ?>
                                            <div class="swiper-slide">
                                                <div class="item">
                                                    <div class="img"><img src="image/<?php echo $partner['image']; ?>" alt=""/></div>
                                                    <?php echo $partner['description']; ?>
                                                </div>
                                            </div><!-- swiper-slide -->
											 <?php } ?>
										
                                        </div>
                                    </div>
                                
                                    <div class="nav">
                                        <div class="swiper-pagination"></div>
                                        <div class="right">
                                            <div class="swiper-button-prev">
                                                <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(157, 44, 44)" d="M21.000,10.635 L0.557,10.635 L10.778,20.811 L10.586,21.002 L0.229,10.691 L0.189,10.730 L-0.003,10.539 L0.037,10.500 L-0.003,10.460 L0.189,10.268 L0.229,10.308 L10.586,-0.003 L10.778,0.188 L0.557,10.364 L21.000,10.364 L21.000,10.635 Z"/></svg>
                                            </div>
                                            <div class="swiper-button-next">
                                                <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M20.963,10.499 L21.002,10.539 L20.907,10.634 L20.907,10.634 L20.906,10.634 L20.811,10.730 L20.771,10.690 L10.413,21.002 L10.221,20.811 L20.443,10.634 L-0.000,10.634 L-0.000,10.364 L20.443,10.364 L10.221,0.187 L10.413,-0.004 L20.771,10.308 L20.811,10.268 L20.907,10.364 L20.907,10.364 L20.907,10.364 L21.002,10.459 L20.963,10.499 Z"/></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    var nSwiper = new Swiper('#our-partners .partners .swiper-container', {
										slidesPerView: 2,
										spaceBetween: 0,
										autoplay: {
											delay: 2500,
											disableOnInteraction: false,
										  },
                                        navigation: {
                                            nextEl: '#our-partners .partners .swiper-button-next',
                                            prevEl: '#our-partners .partners .swiper-button-prev',
                                        },
                                        pagination: {
                                            el: '#our-partners .partners .swiper-pagination',
                                            clickable: true,
                                          },
										  breakpoints: {
											1100: {
												slidesPerView: '1',
											},
											900: {
												slidesPerView: '2',
												spaceBetween: 20,
											},
											700: {
												slidesPerView: '1',
												spaceBetween: 0,
											}
			
										},
										on: {
    init() {
      this.el.addEventListener('mouseenter', () => {
        this.autoplay.stop();
      });

      this.el.addEventListener('mouseleave', () => {
        this.autoplay.start();
      });
    }
  },
                                    });
                                </script>
                            </div>
                        </div>
<?php } ?>

<?php if($theme=='reviews') { ?>
 <div class="reviews fadeEl fadeEl-right w-50">
                        	<div class="slider">
                                <div class="swiper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
										 <?php   foreach ($banners as $banner) { ?>
                                            <div class="swiper-slide">
                                                <div class="header">
                                                    <h2><?=$our_clients?></h2>
                                                    <a href="<?php echo $banner['href']; ?>"><?=$all_reviews?><span><svg width="30px" height="8px"><path fill-rule="evenodd"  fill="rgb(170, 166, 165)" d="M30.006,4.099 L29.538,4.583 L29.441,4.483 L26.036,8.005 L25.569,7.521 L28.974,3.999 L25.569,0.476 L26.036,-0.008 L29.442,3.515 L29.538,3.415 L30.006,3.898 L29.909,3.999 L30.006,4.099 ZM28.449,4.341 L-0.000,4.341 L-0.000,3.656 L28.449,3.656 L28.449,4.341 Z"/>
</svg></span></a>
                                                </div>
                                                <div class="txt">
                                                    <div class="name"><?php echo $banner['title']; ?></div>
                                                    <?php echo $banner['description']; ?>
</p>
													<a href="<?php echo $banner['link']; ?>" class="btn btn-2"><?=$leave_reviews?></a>

                                                </div>
                                            </div><!-- swiper-slide -->
											
                                        <?php } ?>
										
										
                                        </div>
                                    </div>
                                
                                    <div class="nav">
                                        <div class="right">
                                            <div class="swiper-button-prev">
                                                <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(157, 44, 44)" d="M21.000,10.635 L0.557,10.635 L10.778,20.811 L10.586,21.002 L0.229,10.691 L0.189,10.730 L-0.003,10.539 L0.037,10.500 L-0.003,10.460 L0.189,10.268 L0.229,10.308 L10.586,-0.003 L10.778,0.188 L0.557,10.364 L21.000,10.364 L21.000,10.635 Z"/></svg>
                                            </div>
                                            <div class="swiper-button-next">
                                                <svg width="21px" height="21px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M20.963,10.499 L21.002,10.539 L20.907,10.634 L20.907,10.634 L20.906,10.634 L20.811,10.730 L20.771,10.690 L10.413,21.002 L10.221,20.811 L20.443,10.634 L-0.000,10.634 L-0.000,10.364 L20.443,10.364 L10.221,0.187 L10.413,-0.004 L20.771,10.308 L20.811,10.268 L20.907,10.364 L20.907,10.364 L20.907,10.364 L21.002,10.459 L20.963,10.499 Z"/></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    var nSwiper = new Swiper('#our-partners .reviews .swiper-container', {
										autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
	  
                                        navigation: {
                                            nextEl: '#our-partners .reviews .swiper-button-next',
                                            prevEl: '#our-partners .reviews .swiper-button-prev',
                                        },
										on: {
    init() {
      this.el.addEventListener('mouseenter', () => {
        this.autoplay.stop();
      });

      this.el.addEventListener('mouseleave', () => {
        this.autoplay.start();
      });
    }
  }
                                    });
                                </script>
                            </div>
                        </div>
						<?php } ?>

	<?php if($theme=='home_slider') { ?>					
						
						<section id="types-skin">
                	<div class="animation">
                        <center>
                            <h2><?php echo $types_skin?></h2>
                        </center>
                    </div>
                    <div class="slider">
                		<div class="swiper">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
								<?php if ($banners) { ?>
								
								<?php foreach($banners as $banner) { ?>
                                    <div class="swiper-slide">
                                        <div class="item">
										    
                                            <div class="img"><img src="<?=$banner['image']?>" alt=""/></div>
                                            <div class="txt">
                                                <a href="<?=$banner['link']?>"> <?=$banner['title']?></a>
                                               
                                            </div>
                                          <!-- <div class="info" >
											  <div class="ico modal-block" data-id="types-<?=$banner['banner_id']?>">
											  
                                                	<svg width="29.5px" height="29.5px" class="ico1"><path fill-rule="evenodd"  stroke="rgb(255, 255, 255)" stroke-width="1px" stroke-dasharray="8, 4" stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" opacity="0.478" fill="rgb(255, 255, 255)" d="M14.500,0.499 C22.232,0.499 28.500,6.767 28.500,14.499 C28.500,22.231 22.232,28.499 14.500,28.499 C6.768,28.499 0.500,22.231 0.500,14.499 C0.500,6.767 6.768,0.499 14.500,0.499 Z"/></svg>
                                                    <svg  width="29.5px" height="29.5px" class="ico2"><path fill-rule="evenodd"  stroke="rgb(33, 22, 12)" stroke-width="1px" stroke-dasharray="8, 4" stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0.439" opacity="0.788" fill="rgb(34, 18, 12)" d="M14.500,0.499 C22.232,0.499 28.500,6.767 28.500,14.499 C28.500,22.231 22.232,28.499 14.500,28.499 C6.768,28.499 0.500,22.231 0.500,14.499 C0.500,6.767 6.768,0.499 14.500,0.499 Z"/></svg>
                                                    <svg class="ico3" x="0px" y="0px" viewBox="0 0 23.625 23.625" style="enable-background:new 0 0 23.625 23.625;" xml:space="preserve"><path style="fill:rgba(255,255,255,0.5);" d="M11.812,0C5.289,0,0,5.289,0,11.812s5.289,11.813,11.812,11.813s11.813-5.29,11.813-11.813   S18.335,0,11.812,0z M14.271,18.307c-0.608,0.24-1.092,0.422-1.455,0.548c-0.362,0.126-0.783,0.189-1.262,0.189   c-0.736,0-1.309-0.18-1.717-0.539s-0.611-0.814-0.611-1.367c0-0.215,0.015-0.435,0.045-0.659c0.031-0.224,0.08-0.476,0.147-0.759   l0.761-2.688c0.067-0.258,0.125-0.503,0.171-0.731c0.046-0.23,0.068-0.441,0.068-0.633c0-0.342-0.071-0.582-0.212-0.717   c-0.143-0.135-0.412-0.201-0.813-0.201c-0.196,0-0.398,0.029-0.605,0.09c-0.205,0.063-0.383,0.12-0.529,0.176l0.201-0.828   c0.498-0.203,0.975-0.377,1.43-0.521c0.455-0.146,0.885-0.218,1.29-0.218c0.731,0,1.295,0.178,1.692,0.53   c0.395,0.353,0.594,0.812,0.594,1.376c0,0.117-0.014,0.323-0.041,0.617c-0.027,0.295-0.078,0.564-0.152,0.811l-0.757,2.68   c-0.062,0.215-0.117,0.461-0.167,0.736c-0.049,0.275-0.073,0.485-0.073,0.626c0,0.356,0.079,0.599,0.239,0.728   c0.158,0.129,0.435,0.194,0.827,0.194c0.185,0,0.392-0.033,0.626-0.097c0.232-0.064,0.4-0.121,0.506-0.17L14.271,18.307z    M14.137,7.429c-0.353,0.328-0.778,0.492-1.275,0.492c-0.496,0-0.924-0.164-1.28-0.492c-0.354-0.328-0.533-0.727-0.533-1.193   c0-0.465,0.18-0.865,0.533-1.196c0.356-0.332,0.784-0.497,1.28-0.497c0.497,0,0.923,0.165,1.275,0.497   c0.353,0.331,0.53,0.731,0.53,1.196C14.667,6.703,14.49,7.101,14.137,7.429z"/></g></svg>
                                                </div>
                                               
                                                <div class="info-block">
                                                    <div class="close"><svg width="12px" height="12px"><path fill-rule="evenodd"  fill="rgb(46, 44, 42)" d="M12.002,10.284 L10.284,12.002 L6.000,7.718 L1.716,12.002 L-0.002,10.284 L4.282,6.000 L-0.002,1.716 L1.716,-0.002 L6.000,4.282 L10.284,-0.002 L12.002,1.716 L7.718,6.000 L12.002,10.284 Z"/></svg></div>
                                                   <?=$banner['description']?>
                                                </div>
                                            </div>-->
                                        </div>
                                    </div><!-- swiper-slide -->
									
									<?php } ?>
								<?php } ?>
								
			</div>
			                    <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
		</div>
	</div>

	<script>
                            var pSwiper = new Swiper('#types-skin .swiper-container', {
                                slidesPerView: 10,
								spaceBetween: 0,
								loop: true,
								navigation: {
									nextEl: '#types-skin .swiper-button-next',
									prevEl: '#types-skin .swiper-button-prev',
								},
								autoplay: {
									delay: 2500,
									disableOnInteraction: false,
								  },
								centeredSlides: true,
								slideToClickedSlide:true,
                                breakpoints: {
                                    1300: {
                                        slidesPerView: 9,
                                    },
									1100: {
                                        slidesPerView: 'auto',
                                    }

                                },
								on: {
    init() {
      this.el.addEventListener('mouseenter', () => {
        this.autoplay.stop();
      });

      this.el.addEventListener('mouseleave', () => {
        this.autoplay.start();
      });
    }
  },
                            });
							
							
							$(document).on("ready", function () {
								$("#types-skin .slider .info .ico").click(function () {
									
									$("#types-skin .slider .info").removeClass('active');
									$(this).parent("#types-skin .slider .info").addClass('active');
									
									$("#types-skin .slider .info-block .close").click(function () {
										$("#types-skin .slider .info").removeClass('active');
									});
								});
							});
                        </script>
</div>
</section>
<?php if($banners) { ?>
<?php foreach($banners as $banner) { ?>
<div class="modal modal-types" data-id="#types-<?=$banner['banner_id']?>">
<div class="modal-ov"></div>
<div class="modal-content">
<span class="close"><svg width="12px" height="12px"><path fill-rule="evenodd" fill="rgb(43, 43, 43)" d="M11.353,10.646 L10.646,11.353 L6.000,6.707 L1.353,11.353 L0.646,10.646 L5.293,6.000 L0.646,1.353 L1.353,0.646 L6.000,5.293 L10.646,0.646 L11.353,1.353 L6.707,6.000 L11.353,10.646 Z"></path></svg></span>
<div class="modal-body">
<div class="info-block">
 <?=$banner['description']?>
</div>
</div>
</div>
</div>
<?php } } ?>

<?php } ?>