<div class="recently-watched">
                    <div class="container-1300" id="catalog">
                    	<div class="tit-block"><h2><?php echo $heading_title; ?></h2></div>
                        <div id="product-slider" class="slider">
                            <div class="swiper">
                                <div class="swiper-button-prev">
										<svg width="51px" height="50px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M50.127,25.321 L1.329,25.321 L25.728,49.551 L25.270,50.006 L0.547,25.455 L0.452,25.549 L-0.007,25.094 L0.088,25.000 L-0.007,24.905 L0.452,24.450 L0.547,24.545 L25.270,-0.007 L25.728,0.448 L1.329,24.678 L50.127,24.678 L50.127,25.321 Z"/></svg>
                                    </div>
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
									 <?php foreach ($products as $product) { ?>
									
                                        <div class="swiper-slide" >
                                            <div class="product product-card fadeEl">
                                                <div class="img"><a class="product-img" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="" /></a></div>
                                                <div class="info">
                                                   
                                             <div class="btn-block btn-black">
										<button type="button" class="buy-btn buy" data-id="<?php echo $product['product_id']; ?>">
                                                                 <svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
                                                            <path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0"></path>
                                                            <path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0"></path>
                                                            <path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0"></path>
                                                        </svg>
                                                        <svg  width="16px" height="16px" class="buyplus"><path fill-rule="evenodd"  stroke-width="1px" stroke="rgb(48, 44, 36)" fill="rgb(255, 255, 255)" d="M12.500,9.500 L9.500,9.500 L9.500,12.500 L6.500,12.500 L6.500,9.500 L3.500,9.500 L3.500,6.500 L6.500,6.500 L6.500,3.500 L9.500,3.500 L9.500,6.500 L12.500,6.500 L12.500,9.500 Z"/></svg>
                                                            </button>
                                                       
                                                    </div>
													 <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                     <?php /* echo $product['short_description'];*/ ?>
													<hr/>
													<?php if(!empty($product['attribute'])) {  ?>
                                                 
                                                    <!--<table>
                                                        <tbody>
														<?php foreach($product['attribute'] as $attr) { ?>
                                                            <tr>
                                                                <td><?=$attr['name']?>: </td>
                                                                <td><?=$attr['text']?></td>
                                                            </tr>
															<?php } ?>
                                               
                                                        </tbody>
                                                    </table>-->
													<?php } ?>
                                                </div>
                                                <div class="flex">
                                                	<div class="kol">
                                                        <span class="minus">-</span>
                                                       
								 <input type="text" name="quant" value="1" size="2"   />
                                                        <p>м<span>2</span></p>
                                                        <span class="plus">+</span>
                                                    </div>
                                 <input type="hidden" name="id" value="<?=$product['product_id']?>" />
                                                   <div class="btn modal-block quick-btn" data-product_id="<?=$product['product_id']?>" data-id="prod-1"><span><?=$buy_oneclick?></span></div>
                                                </div>
                                               
                                             
                                            </div><!-- product -->
                                        </div><!-- swiper-slide -->
                                       
                                       <?php } ?> 
                                    </div>
                                </div>
                                <div class="swiper-button-next">
									<svg width="51px" height="50px"><path fill-rule="evenodd"  fill="rgb(19, 19, 19)" d="M51.006,25.094 L50.548,25.549 L50.453,25.455 L25.730,50.006 L25.272,49.551 L49.671,25.321 L0.872,25.321 L0.872,24.678 L49.671,24.678 L25.272,0.448 L25.730,-0.007 L50.453,24.545 L50.548,24.450 L51.006,24.905 L50.911,25.000 L51.006,25.094 Z"/></svg>
                                </div>
                            </div>
                             <script>
                                var qSwiper = new Swiper('#product-slider .swiper-container', {
                                    slidesPerView: 3,
									spaceBetween: 20,
									
									navigation: {
                                        nextEl: '#product-slider .swiper-button-next',
                                        prevEl: '#product-slider .swiper-button-prev',
                                    },
									breakpoints: {
										1350: {
											spaceBetween: 20,
										},
										1100: {
											slidesPerView: 2,
											spaceBetween: 20,
										},
										715: {
											slidesPerView: 1,
											spaceBetween: 0,
										}
                                   }
                                });



//-->
                            </script>
                        </div><!-- #product-slider -->
                        </div>
                    </div>



<!--<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>-->
