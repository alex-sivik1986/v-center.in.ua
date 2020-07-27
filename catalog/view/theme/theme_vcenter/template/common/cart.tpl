
    <div id="cart" class="basket-block">
                        	<a href="<?php echo $checkout; ?>" class="basket">
								<svg height="420pt" viewBox="-1 0 420 420.00112" width="420pt" class="ico-hover">
                                	<path d="m152.171875 327.882812c-25.4375 0-46.058594 20.625-46.058594 46.0625.003907 25.4375 20.625 46.054688 46.0625 46.054688s46.058594-20.621094 46.058594-46.058594c-.03125-25.425781-20.636719-46.03125-46.0625-46.058594zm0 72.117188c-14.390625 0-26.058594-11.667969-26.058594-26.0625.003907-14.390625 11.667969-26.054688 26.0625-26.054688 14.390625 0 26.058594 11.667969 26.058594 26.058594-.019531 14.386719-11.675781 26.042969-26.0625 26.058594zm0 0" fill="<?=($class=='common-home')?'#9d2c2c':'black'?>"/><path d="m333.449219 327.882812c-25.4375 0-46.058594 20.621094-46.058594 46.058594s20.621094 46.058594 46.058594 46.058594 46.058593-20.621094 46.058593-46.058594c-.03125-25.425781-20.632812-46.027344-46.058593-46.058594zm0 72.117188c-14.394531 0-26.058594-11.667969-26.058594-26.058594 0-14.394531 11.667969-26.058594 26.058594-26.058594s26.058593 11.667969 26.058593 26.058594c-.015624 14.386719-11.675781 26.042969-26.058593 26.058594zm0 0" fill="<?=($class=='common-home')?'#9d2c2c':'black'?>"/><path d="m408.265625 81.679688h-313.566406l-6.800781-40.046876c-4.027344-24.070312-24.886719-41.6835932-49.289063-41.632812h-28.609375c-5.523438 0-10 4.476562-10 10s4.476562 10 10 10h28.605469c14.644531-.03125 27.160156 10.539062 29.578125 24.980469l36.207031 213.3125c4.03125 24.074219 24.894531 41.691406 49.300781 41.632812h213.171875c5.519531 0 10-4.476562 10-10 0-5.523437-4.480469-10-10-10h-213.175781c-14.640625.035157-27.15625-10.535156-29.574219-24.976562l-3.640625-21.449219h209.023438c26.089844.058594 49.210937-16.804688 57.128906-41.664062l31.160156-97.101563c.976563-3.042969.441406-6.367187-1.441406-8.949219-1.882812-2.582031-4.882812-4.105468-8.078125-4.105468zm-40.683594 104.046874c-5.28125 16.574219-20.695312 27.8125-38.089843 27.773438h-212.414063l-18.984375-111.820312h296.457031zm0 0" fill="<?=($class=='common-home')?'#9d2c2c':'black'?>"/>
                                </svg>
								 <?php  if ($products || $vouchers) { ?>
							
								<span class="value"><?php  echo $quantity; ?></span>
								
								  <?php } ?>
                            </a>
                        </div>
<!--<div  class="btn-group btn-block">
  <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><i class="fa fa-shopping-cart"></i> <span id="cart-total"><?php echo $text_items; ?></span></button>
  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-striped">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-right">x <?php echo $product['quantity']; ?></td>
          <td class="text-right"><?php echo $product['total']; ?></td>
          <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        <table class="table table-bordered">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
            <td class="text-right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
</div>-->
