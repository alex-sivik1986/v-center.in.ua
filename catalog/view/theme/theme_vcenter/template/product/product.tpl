<?php echo $header; ?>
<style>
 button img {
-webkit-mask-image: url("https://v-center.in.ua/catalog/view/theme/theme_vcenter/img/catalog/prodbg.png");
  mask-border: url("https://v-center.in.ua/catalog/view/theme/theme_vcenter/img/catalog/prodbg.png");
  mask-image: url("https://v-center.in.ua/catalog/view/theme/theme_vcenter/img/catalog/prodbg.png");
  
 }
 @media (min-width: 901px) {
	 #product .swiper-thumbnails-block .swiper-wrapper {
		top: -111px; 
	 }
 }
 @media (max-width: 900px) {
	 #product .swiper-thumbnails-block .swiper-wrapper {
		left: -131px; 
	 }
 }
</style>
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
				
				
<section id="product-page" class="anim-top start-anim"> 
	<div class="container-1140" id="product">
		<div class="product_one-row">
			<div id="product_one-slider" class="slider">
				
				<div class="swiper">
<?php if ($options && !empty($options)) { ?>
	<div class="nav">
		<div class="swiper-button-prev">
			<svg width="28px" height="29px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M28.003,14.633 L14.255,28.689 L14.307,28.743 L14.053,29.004 L14.000,28.950 L13.947,29.004 L13.692,28.743 L13.745,28.689 L-0.004,14.633 L0.251,14.373 L13.820,28.244 L13.820,0.502 L14.180,0.502 L14.180,28.245 L27.748,14.373 L28.003,14.633 Z"/></svg>
		</div>
		
		
		
		
		<div class="swiper-thumbnails-block">
                                        
                                        
                                            <div class="swiper-container thumbnails-container">
                                            	<div class="swiper-wrapper ">
                                            		
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'radio') { ?>
<?php $m=0; foreach ($option['product_option_value'] as $option_value) { ?>
   <?php if ($option_value['image']) { if($m==0) { $check = 'checked'; } else { $check = '';  } ?>
                                                    <div class="swiper-slide swiper-thumbnails" data-id="color<?=$option_value['product_option_value_id']?>">
                                                        <button type="button" data-id="color<?=$option_value['product_option_value_id']?>">
                                                            <input <?=$check?> id="option-<?=$option_value['product_option_value_id']?>"  type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">
                                                            <label for="option-<?=$option_value['product_option_value_id']?>"><img src="<?php echo $option_value['image']; ?>" alt=""></label>
                                                        </button>
                                                    </div>
<?php } ?>
<?php ++$m; } ?>  
<?php } ?>    <?php } ?> 
												
                                            	</div>
                                            </div>
                                            
                                            
                                        </div><!--swiper-thumbnails-->
		
		
		
		
		
		<!--<div class="swiper-thumbnails">										
	
	<?php foreach ($options as $option) { ?>
	 <?php if ($option['type'] == 'radio') { ?>
	  <?php $m=0; foreach ($option['product_option_value'] as $option_value) { ?>
	   <?php if ($option_value['image']) { if($m==0) { $check = 'checked'; } else { $check = '';  } ?>
				<button type="button" data-id="color<?=$option_value['product_option_value_id']?>">
					<input <?=$check?> id="input-option<?php echo $option['product_option_id']; ?>" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">
					
					<label for="pr<?=$m?>">
					
					<img  src="<?php echo $option_value['image']; ?>" alt=""></label>
				</button>
	  <?php } ?>
		 <?php ++$m; } ?>  
	<?php } ?>    <?php } ?>   

          </div>-->
                                        
	<div class="swiper-button-next">
		<svg width="28px" height="29px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M28.003,14.633 L14.255,28.689 L14.307,28.743 L14.053,29.004 L14.000,28.950 L13.947,29.004 L13.692,28.743 L13.745,28.689 L-0.004,14.633 L0.251,14.373 L13.820,28.244 L13.820,0.502 L14.180,0.502 L14.180,28.245 L27.748,14.373 L28.003,14.633 Z"/></svg>
	</div>
          </div>
 <?php } ?>   
                                    
<div class="swiper-container main-slider">
<div class="swiper-wrapper">
<?php if ($options && !empty($options)) { ?>
<?php foreach ($options as $option) { ?>		
<?php if ($option['type'] == 'radio') { ?>
<?php foreach ($option['product_option_value'] as $option_value) { ?>
<?php if ($option_value['big_image']) { ?>
<div class="swiper-slide">
<div class="product">
<a class="image-popup-no-margins prod-zoom" href="image/<?php echo $option_value['popup_image']; ?>">
<img src="/img/zoom-in.png" class="zoomin" alt=""/>
<img  class="img-responsive" src="<?php echo $option_value['big_image']; ?>" alt="">
</a>
</div>
</div><!-- swiper-slide -->


<?php } ?> <?php } ?> <?php } ?>  <?php } ?>  <?php } else { ?>
<a class="image-popup-no-margins prod-zoom" href="<?php echo $thumb; ?>">
<img src="/img/zoom-in.png" class="zoomin" alt=""/>
<img class="img-responsive" src="<?php echo $thumb; ?>" alt="">
</a>
<?php } ?>
		
</div>
</div>
	
</div>
                                
<script>

                                    var pSwiper = new Swiper('#product_one-slider .main-slider', {
                                        direction: 'vertical',
										initialSlide:0,
                                        navigation: {
                                            nextEl: '#product_one-slider .swiper-button-next',
                                            prevEl: '#product_one-slider .swiper-button-prev',
                                        },
                                        breakpoints: {
                                            900: {
                                                direction: 'horizontal',
                                             }
                                        }
                                
                                    });
                                   
									
									var galleryThumbs = new Swiper('#product_one-slider .thumbnails-container', {
									  slidesPerView: 5,
									  centeredSlides: true,
									  touchRatio: 0.2,
									  slideToClickedSlide: true,
									  direction: 'vertical',
									  initialSlide:0,
									  breakpoints: {
										900: {
											direction: 'horizontal',
										}
									  }
									 
									});
									pSwiper.controller.control = galleryThumbs;
									galleryThumbs.controller.control = pSwiper;
										
									/*	
									$('#product_one-slider .swiper-button-prev').click(function () {										
										var colorcl = $("#product_one-slider .swiper-slide-active").attr('data-id');
										$(".product_one-info .skin-color .color").removeClass('active');
										$(".product_one-info  .skin-color .color[data-id='"+colorcl+"']").addClass('active');
										
									
										$("#product_one-slider .swiper-slide input").removeAttr('checked');
										$("#product_one-slider .swiper-slide-active input").prop('checked', true);
										
									});
									$('#product_one-slider .swiper-button-next').click(function () {										
										var colorcl1 = $("#product_one-slider .swiper-slide-active").attr('data-id');
										$(".product_one-info .skin-color .color").removeClass('active');
										$(".product_one-info  .skin-color .color[data-id='"+colorcl1+"']").addClass('active');
										
										//checked
										$("#product_one-slider .swiper-slide input").removeAttr('checked');
										$("#product_one-slider .swiper-slide-active input").prop('checked', true);
									});
									*/
									$('#product_one-slider .swiper-thumbnails').click(function () {										
										var colorcl3 = $("#product_one-slider .swiper-slide-active").attr('data-id');
										$(".product_one-info .skin-color .color").removeClass('active');
										$(".product_one-info  .skin-color .color[data-id='"+colorcl3+"']").addClass('active');
									});
									
//$('.swiper-button-prev').on('click', function() { switchRadio(-1, getCheckedRadio()) });
//$('.swiper-button-next').on('click', function() { switchRadio( 1, getCheckedRadio()) });

pSwiper.on('slideChange', function(){
  $("#product_one-slider .swiper-slide input").removeAttr('checked');
  $("#product_one-slider .swiper-slide-active input").prop('checked', true);
});

function switchRadio(direction, index) {
  var inputArr = $('input').toArray();
  inputArr[index].checked = false;
  var targetIndex = index + direction;
  if (targetIndex < 0) {
	    targetIndex = inputArr.length - 1;
  } else if (targetIndex > inputArr.length - 1) {
	    targetIndex = 0;
  };  
  inputArr[targetIndex].checked = true;
};

function getCheckedRadio() {
  var radioIndex;
  $('input').each(function( index ) {
    if (this.checked) {radioIndex = index};
  });
  return radioIndex;
};										
                                </script>
                                
<link rel="stylesheet" type="text/css" href="catalog/view/theme/theme_vcenter/stylesheet/magnific-popup.css" />
<script src="catalog/view/javascript/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/lightbox.js" type="text/javascript"></script> 
                                
                            </div><!-- #product_one-slider -->
                            
                        
                        	<div class="product_one-info product">
                            	<h1><?php echo $heading_title; ?></h1>
								<div class="skin-color">
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'radio') { ?>
<?php  foreach ($option['product_option_value'] as $option_value) { ?>

<p data-id="color<?=$option_value['product_option_value_id']?>" class="color"><?=$option_value['name']?></p>

<?php  } } } ?>


                                </div>
                              
                                <div class="flex">
                                    <div class="kol">
                                        <span class="minus">-</span>
                                       
										 <input type="text" name="quantity" value="1" size="2" id="input-quantity"  />
                                        <p>м<span>2</span></p>
                                        <span class="plus">+</span>
                                    </div>
									 <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    <div class="btn-block btn-black">
									  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="buy-btn">
                                       
                                            <svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
                                            <path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0"></path>
                                            <path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0"></path>
                                            <path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0"></path>
                                        </svg>
                                        <svg  width="16px" height="16px" class="buyplus"><path fill-rule="evenodd"  stroke-width="1px" stroke="rgb(48, 44, 36)" fill="rgb(255, 255, 255)" d="M12.500,9.500 L9.500,9.500 L9.500,12.500 L6.500,12.500 L6.500,9.500 L3.500,9.500 L3.500,6.500 L6.500,6.500 L6.500,3.500 L9.500,3.500 L9.500,6.500 L12.500,6.500 L12.500,9.500 Z"/></svg>
                                        </button>
                                    </div>
									<span class="add-checkout-mobile"><?=$text_checkout?></span>
                                    <div class="block-specification">
                                    	<a href="#specifications" class="anchor"><img src="/img/skin2.png" alt=""/><span><?=$tab_attribute?></span></a>
                                        <a href="#lab" class="anchor"><img src="/img/lab2.png" alt=""/><span><?=$laboratory?></span></a>
                                    </div><!--<span class="add-checkout"><?=$text_checkout?></span>-->
                                </div>
                                <div class="txt">
                                    	   <?=$description?>
                                    </div>
                            </div>
                        </div>
                   </div>
				
<style>
.add-checkout {
    font-family: 'museo_cyrl500';
    font-size: 18px;
}
.add-checkout-mobile {
	font-family: 'museo_cyrl500';
    font-size: 16px;
	width: 100%;
	text-align: right;
	
}
@media (min-width: 1028px) and (max-width: 1200px) {
.add-checkout {
    width: 73%;
    text-align: center;
}

}
@media(max-width: 886px) {
.add-checkout {
	 display:none;
}
.add-checkout-mobile {
	display:block;
	width: 100%;
	display:block;
    text-align: right;

}
}
@media(max-width: 680px) {
.add-checkout {
    width: 73%;
	display:block;
    text-align: center;
}
.add-checkout-mobile {
    display:block;
}	
}
@media(max-width: 562px) {
.add-checkout {
    display:none;
}
.add-checkout-mobile {
	display:block;
	 width: 100%;
	display:block;
    text-align: right;
}
}
</style>				
				
				
<!--<section id="product-page"> 
                    <div class="container-1300" id="product">
                        <div id="product_one-slider" class="slider">
                            <div class="anim-top start-anim">
                                <center>
                                    <h1><?php echo $heading_title; ?></h1>
                                </center>
                            </div>
                            <div class="swiper anim-top start-anim">
                                <div class="swiper-button-prev">
										<svg width="51px" height="50px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M50.127,25.321 L1.329,25.321 L25.728,49.551 L25.270,50.006 L0.547,25.455 L0.452,25.549 L-0.007,25.094 L0.088,25.000 L-0.007,24.905 L0.452,24.450 L0.547,24.545 L25.270,-0.007 L25.728,0.448 L1.329,24.678 L50.127,24.678 L50.127,25.321 Z"/></svg>
                                    </div>
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
		 <?php if ($options && !empty($options)) { ?>
            
            <?php foreach ($options as $option) { ?>
									
									<?php if ($option['type'] == 'radio') { ?>
									 <?php foreach ($option['product_option_value'] as $option_value) { ?>
									 <?php if ($option_value['big_image']) { ?>
                                        <div class="swiper-slide">
                                            <div class="product">
                                                <div style="display:none" class="articl"><?=$entry_articule?>: <?=$sku?></div>
                                                <div class="flex">
                                                    <div class="block"><a href="#specifications" class="anchor"><img src="img/ico/skin.png" alt=""/><span><?=$tab_attribute?></span></a></div>
                                                    <div class="img"><img src="<?php echo $option_value['big_image']; ?>" alt=""></div>
                                                    <div class="block"><a href="#lab" class="anchor"><img src="img/ico/lab.png" alt=""/><span><?=$laboratory?></span></a></div>
                                                </div>
                                                
                                            </div>
                                        </div>
										 <?php } ?>
										  <?php } ?>
										    <?php } ?>
										
                                       <?php } ?>
										    <?php } ?> 
                                    
                                        
                                    </div>
								
                                    <div class="product-btn product">
                                        <div class="block-white">
                                            <div class="btn-block">
											 
                                               <button type="button" data-like="<?php echo $product_id; ?>" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" class="wishlist like" onclick="wishlist.add('<?php echo $product_id; ?>');"></button>
											   <input type="hidden" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                                               <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                               <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="buy-btn">
												 
                                                    <svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
                                                <path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0"></path>
                                                <path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0"></path>
                                                <path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0"></path>
                                            </svg>
                                                </button>
                                            </div>
											
                                            <a id="href-cart" href="#" class="add-card">Добавить в корзину</a></span>
                                        </div>
                                         <div class="btn modal-block quick-btn" data-product_id="<?=$product_id?>" data-id="prod-1"><span><?=$buy_oneclick?></span></div>
                                    </div>
                                
								 
                                </div>
                            
                                <div class="nav">
                                 
                                    <div class="swiper-thumbnails">
      
			<?php if ($options && !empty($options)) { ?>
            
            <?php foreach ($options as $option) { ?>
			 <?php if ($option['type'] == 'radio') { ?>
			  <?php $m=0; foreach ($option['product_option_value'] as $option_value) { ?>
			   <?php if ($option_value['image']) { if($m==0) { $check = 'checked'; } else { $check = '';  } ?>
						<button type="button" >
							<input <?=$check?> id="input-option<?php echo $option['product_option_id']; ?>" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">
							
							<label for="pr<?=$m?>"><img src="<?php echo $option_value['image']; ?>" alt=""></label>
						</button>
              <?php } ?>
				 <?php ++$m; } ?>  
				 <?php } ?>    <?php } ?>   


                             <script>
                                var pSwiper = new Swiper('#product_one-slider .swiper-container', {
                                    navigation: {
                                        nextEl: '#product_one-slider .swiper-button-next',
                                        prevEl: '#product_one-slider .swiper-button-prev',
                                    }
                            
                                });
                                swiperThumbs(pSwiper, {
                                    scope: '#product_one-slider .swiper',
                                    element: 'swiper-thumbnails'
                                });
                            </script>
				 <?php } ?>  
                                    </div>
                                </div>
                                
                                
                                
                                <div class="swiper-button-next">
									<svg width="51px" height="50px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M51.006,25.094 L50.548,25.549 L50.453,25.455 L25.730,50.006 L25.272,49.551 L49.671,25.321 L0.872,25.321 L0.872,24.678 L49.671,24.678 L25.272,0.448 L25.730,-0.007 L50.453,24.545 L50.548,24.450 L51.006,24.905 L50.911,25.000 L51.006,25.094 Z"/></svg>
                                </div>
                            </div>
                            
                        </div>
                   </div>-->
				
			
				<?php if ($attribute_groups) { 
				$b=0;
				$q[0]='specifications';
				$q[1]='lab';
				?>
				 <?php foreach ($attribute_groups as $attribute_group) { ?>
					
					<div id="<?=$q[$b]?>" class="product-info">
                        <div class="container-540">
					        <?php if ($b==1) { ?> <div class="lab-note note-top fadeEl flex">
                            	<div class="img"><img src="/img/infoimg.png" alt=""/></div>
                                <div class="txt">
                                	<p><?=$attr?></p>
                                </div>
                            </div> <?php } ?>
                            <div class="specifications-block fadeEl">
                                <div class="tit"><?php echo $attribute_group['name']; ?></div>
                                <div class="table-info">
                                    <table>
                                        <tbody>
										 <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                            <tr>
                                                <td><?php echo $attribute['name']; ?></td>
                                                <td><?php echo $attribute['text']; ?></td>
                                            </tr>
											   <?php } ?>
                                        </tbody>
                                    </table>
									
                                </div>
								
								
                            </div>
							 <?php if ($b==1) { ?> <div class="lab-note note-bottom flex fadeEl">
                            	<div class="img"><img src="/img/noteimg.png" alt=""/></div>
                                <div class="txt">
                                	<p><strong><?=$notes?></strong></p>
                                    <p><?=$notes_text?></p>
                                </div>
                            </div> <?php } ?>
							<?php if ($b==1) { ?> <div class="btn-block fadeEl">
                            	<a href="/laboratoriya/" class="btn"><?=$our_laboratory?></a>
                            </div> <?php } ?>
							
                        </div>
                    </div>
					<!--<?php if (!empty($attr) && $b==0) { ?>
								 <div class="attr-product">
								<strong><?=$attr?> </strong>
								 </div>
								<?php } ?> -->
                 <?php ++$b; } ?>
				   <?php } else { ?>
				   <div id="specifications" class="product-info">
                        <div class="container-540">
                            <!--<center>
                               <?=$description?>
                            </center> -->
				     </div>
                        </div>
				   <?php } ?>
				   <?php echo $content_top; ?> 
				   </section>
				 <section class="form-transform no-transform">
				  <?php echo $content_bottom; ?>  
				    </section>
					  

<script type="text/javascript"><!--


$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--

$('#href-cart').on('click', function(e) {
	e.preventDefault();
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});




$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				/*$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');*/
                $('a.basket').html('<svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover"><path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0" fill="black"></path><path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0" fill="black"></path><path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0" fill="black"></path></svg><span class="value">' + json['total'] + '</span>');
				$(".modal[data-id='#product_add-cart']").toggleClass('open');
						  $(".modal-ov").show("slow");
						  $("body").addClass("open-hidden");

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
    grecaptcha.reset();
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
//--></script>
 <div class="wishlist-fix">
 <svg width="55.5px" height="55.5px" class="bg"><path fill-rule="evenodd"  stroke="rgb(0, 0, 0)" stroke-width="1px" stroke-dasharray="8, 4" stroke-linecap="butt" stroke-linejoin="miter" opacity="0.22" fill="rgb(255, 255, 255)"
 d="M27.500,0.499 C42.411,0.499 54.500,12.587 54.500,27.498 C54.500,42.410 42.411,54.499 27.500,54.499 C12.588,54.499 0.500,42.410 0.500,27.498 C0.500,12.587 12.588,0.499 27.500,0.499 Z"/>
</svg>
<a data-toggle="tooltip" class="wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
<svg viewBox="0 -28 512.001 512" class="ico-hover"><path d="m256 455.515625c-7.289062 0-14.316406-2.640625-19.792969-7.4375-20.683593-18.085937-40.625-35.082031-58.21875-50.074219l-.089843-.078125c-51.582032-43.957031-96.125-81.917969-127.117188-119.3125-34.644531-41.804687-50.78125-81.441406-50.78125-124.742187 0-42.070313 14.425781-80.882813 40.617188-109.292969 26.503906-28.746094 62.871093-44.578125 102.414062-44.578125 29.554688 0 56.621094 9.34375 80.445312 27.769531 12.023438 9.300781 22.921876 20.683594 32.523438 33.960938 9.605469-13.277344 20.5-24.660157 32.527344-33.960938 23.824218-18.425781 50.890625-27.769531 80.445312-27.769531 39.539063 0 75.910156 15.832031 102.414063 44.578125 26.191406 28.410156 40.613281 67.222656 40.613281 109.292969 0 43.300781-16.132812 82.9375-50.777344 124.738281-30.992187 37.398437-75.53125 75.355469-127.105468 119.308594-17.625 15.015625-37.597657 32.039062-58.328126 50.167969-5.472656 4.789062-12.503906 7.429687-19.789062 7.429687zm-112.96875-425.523437c-31.066406 0-59.605469 12.398437-80.367188 34.914062-21.070312 22.855469-32.675781 54.449219-32.675781 88.964844 0 36.417968 13.535157 68.988281 43.882813 105.605468 29.332031 35.394532 72.960937 72.574219 123.476562 115.625l.09375.078126c17.660156 15.050781 37.679688 32.113281 58.515625 50.332031 20.960938-18.253907 41.011719-35.34375 58.707031-50.417969 50.511719-43.050781 94.136719-80.222656 123.46875-115.617188 30.34375-36.617187 43.878907-69.1875 43.878907-105.605468 0-34.515625-11.605469-66.109375-32.675781-88.964844-20.757813-22.515625-49.300782-34.914062-80.363282-34.914062-22.757812 0-43.652344 7.234374-62.101562 21.5-16.441406 12.71875-27.894532 28.796874-34.609375 40.046874-3.453125 5.785157-9.53125 9.238282-16.261719 9.238282s-12.808594-3.453125-16.261719-9.238282c-6.710937-11.25-18.164062-27.328124-34.609375-40.046874-18.449218-14.265626-39.34375-21.5-62.097656-21.5zm0 0"></path></svg></a></div>
<?php echo $footer; ?>

 
</div>