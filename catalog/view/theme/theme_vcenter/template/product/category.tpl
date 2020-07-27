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

<section id="catalog-banner"> 
                    <div class="container-1300">
                        <div class="start-anim">
                            <center>
                                <h1><?php echo $heading_title; ?></h1>
                            </center>
                        </div>
						 <?php if ($categories) { ?>
					
                        <div class="prod-filter">
                            <div class="flex">
							 <?php foreach ($categories as $category) { ?>
                                <div class="item">
                                    <div class="img"><img src="<?php echo $category['image']; ?>" alt=""></div>
                                    <div class="tit"><?php echo $category['name']; ?></div>
                                    <a href="<?php echo $category['href']; ?>" class="link"></a>
                                </div>
                             <?php } ?>
                                
                            </div>
                        </div>
						<?php } ?>
						<?php echo $content_top; ?>
                    </div>
               </section>
<?php if ($products) { ?>
<section id="catalog" class="container-1140"> 
                    <div id="content" class="flex product-list">
					 <?php $m=1; foreach ($products as $product) {  ?>
		 <div class="product product-card fadeEl">
                            <div class="img"><a class="product-img" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="" /></a></div>
                            <div class="info">
                             
                                   <div class="btn-block btn-black">
                                       
										<!--<button type="button" data-like="<?php echo $product['product_id']; ?>" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" class="wishlist like" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>-->
											<button type="button" class="buy-btn buy" data-id="<?php echo $product['product_id']; ?>">
										<svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
                                        <path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0"></path>
                                        <path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0"></path>
                                        <path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0"></path>
                                    </svg>
                                    <svg  width="16px" height="16px" class="buyplus"><path fill-rule="evenodd"  stroke-width="1px" stroke="rgb(48, 44, 36)" fill="rgb(255, 255, 255)" d="M12.500,9.500 L9.500,9.500 L9.500,12.500 L6.500,12.500 L6.500,9.500 L3.500,9.500 L3.500,6.500 L6.500,6.500 L6.500,3.500 L9.500,3.500 L9.500,6.500 L12.500,6.500 L12.500,9.500 Z"/></svg>
										
										</button>
                                        
                                    </div><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
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
				<?php ++$m; } ?>	
					
 </div>
</section>

<?php } else { ?>
<section class="form-transform no-transform"> 

</div>

<?php } ?>
<div class="row">
        <div class="col-sm-12"><?php echo $pagination; ?></div>
     
      </div>
<?php if (!$categories && !$products) { ?>
<!--<section class="container-1300"> 
      <p><?php echo $text_empty; ?></p>
      <div class="flex">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
	  </section>-->
      <?php } ?>

<!--<div class="container">
  
      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>
        <div class="col-md-4 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-3 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
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
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div>-->
	  <?php if ($category_id != 33) { ?>
   <section class="form-transform no-transform">
<?php echo $content_bottom; ?>
</section>
	  <?php } ?>
<?php if(!empty($description)) { ?>
 <section class="seo-info fadeEl container-920 txt-center">
                    <div class="container flex">
                        <div class="txt">
                           <?=$description?>
						   <?php if ($category_id != 33) { ?>
						    <div class="txt-hide">
                        	 <?php echo $hide_description; ?>
                        </div>
						<?php if(!empty($hide_description)) { ?>
                            <div class="more-block">
                               <div class="more"><?=$details?> <span><svg width="9px" height="5px"><path fill-rule="evenodd"  fill="rgb(48, 44, 37)" d="M9.007,0.521 L5.044,4.369 L5.157,4.478 L4.613,5.007 L4.500,4.897 L4.387,5.007 L3.843,4.478 L3.955,4.369 L-0.008,0.521 L0.537,-0.008 L4.500,3.840 L8.463,-0.008 L9.007,0.521 Z"/></svg></span></div>
                            </div>
						<?php } ?>
						 <?php } ?>
                        </div>
                    </div>
                </section>
<style>
	.seo-info .txt-hide{
		display:none;
		margin-top: 20px;
		position: relative;
	}
	.seo-info .more-block .more {
		font-size: 15px;
		color: #9b9695;
		font-style: initial;
		cursor: pointer;
	}
	.seo-info .more-block .more.active span{
		transform: rotate(-180deg) translate(0, -3px) !important;
		animation: none;
	}
</style>
<script>
	$(document).on("ready", function () {
		$(".seo-info .more").click(function () {
			$(this).toggleClass('active');
			$(".seo-info .txt-hide").slideToggle('normal');
		});
	});
</script>
<?php } ?>
<?php if ($category_id == 33) { ?>
   <section class="form-transform no-transform">
<?php echo $content_bottom; ?>
</section>
 <section class="seo-info fadeEl container-920 txt-center" >
                    <div class="container flex">
                        <div class="txt">
<?php echo $hide_description; ?>
</div>
</div>
</section>
<?php } ?>
<?php echo $footer; ?>
