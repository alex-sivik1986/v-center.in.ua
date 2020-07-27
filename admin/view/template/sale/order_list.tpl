<?php echo $header; ?>
<link type="text/css" href="view/stylesheet/system.css" rel="stylesheet" media="screen" />
<?php echo $column_left; ?>

						


<div id="content">
  <div  class="page-header">
    <div class="container-fluid">
      <div style="display:none" class="pull-right">
        <button type="submit" id="button-shipping" form="form-order" formaction="<?php echo $shipping; ?>" formtarget="_blank" data-toggle="tooltip" title="<?php echo $button_shipping_print; ?>" class="btn btn-info"><i class="fa fa-truck"></i></button>
        <button type="submit" id="button-invoice" form="form-order" formaction="<?php echo $invoice; ?>" formtarget="_blank" data-toggle="tooltip" title="<?php echo $button_invoice_print; ?>" class="btn btn-info"><i class="fa fa-print"></i></button>
        <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" id="button-delete" form="form-order" formaction="<?php echo $delete; ?>" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
  
  

   <section id="admin-page" class="container-1300"> 
                    <div class="row">
                    	<div class="menu-admin" style="margin-bottom: 15px;">
                            <div class="btn-block">
                                <a href="<?php echo $add_ajax; ?>" style="display: none;" class="btn create-order">Создать заказ</a>
                                <a href="<?php echo $add; ?>" style="display:block;" class="btn">Создать заказ</a>
                            </div>
                            <ul style="display:flex;display: none;">
                                <li><a href="#" class="a1"><span>Все заказы</span></a></li>
                                <li><a href="#" class="active a2"><span>Новые заказы</span></a></li>
                                <li><a href="#" class="a3"><span>Заказы в обработке</span></a></li>
                                <li><a href="#" class="a4"><span>Закрытые заказы</span></a></li>
                                <li><a href="#" class="a5"><span>Отмененные заказы</span></a></li>
                            </ul>
                        </div>
						 <div class="fadeEl fadeEl-right start-anim admin-list">
                            <div class="admin_header">
                                <div class="panel-body">


                                    <?php if ($error_warning) { ?>
                                        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                        </div>
                                    <?php } ?>
                                    <?php if ($success) { ?>
                                        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                        </div>
                                    <?php } ?>


                                    <div class="well">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
                                                    <input type="text" name="filter_order_id" value="<?php echo $filter_order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label" for="input-date-added"><?php echo $entry_date_added; ?></label>
                                                    <div class="input-group date">
                                                        <input type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $entry_date_added; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
                                                        <span class="input-group-btn">
                  <button style="line-height: 10px;font-size: 14px" type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label" for="input-customer"><?php echo $entry_customer; ?></label>
                                                    <input type="text" name="filter_customer" value="<?php echo $filter_customer; ?>" placeholder="<?php echo $entry_customer; ?>" id="input-customer" class="form-control" />
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label" for="input-date-modified"><?php echo $entry_date_modified; ?></label>
                                                    <div class="input-group date">
                                                        <input type="text" name="filter_date_modified" value="<?php echo $filter_date_modified; ?>" placeholder="<?php echo $entry_date_modified; ?>" data-date-format="YYYY-MM-DD" id="input-date-modified" class="form-control" />
                                                        <span class="input-group-btn">
                  <button style="line-height: 10px;font-size: 14px" type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
                                                </div>

                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
                                                    <select name="filter_order_status" id="input-order-status" class="form-control">
                                                        <option value="*"></option>
                                                        <?php if ($filter_order_status == '0') { ?>
                                                            <option value="0" selected="selected"><?php echo $text_missing; ?></option>
                                                        <?php } else { ?>
                                                            <option value="0"><?php echo $text_missing; ?></option>
                                                        <?php } ?>
                                                        <?php foreach ($order_statuses as $order_status) { ?>
                                                            <?php if ($order_status['order_status_id'] == $filter_order_status) { ?>
                                                                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                                            <?php } else { ?>
                                                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <!--                                                    <label class="control-label" for="input-date-modified">--><?php //echo $entry_date_modified; ?><!--</label>-->

                                                    <button type="button" id="button-filter" style="display: block;margin-top: 21px;line-height: 14px;width: 100%;" class="btn btn-primary pull-right1"><i class="fa fa-filter"></i> <?php echo 'Показать';//echo $button_filter; ?></button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                </div>



                                <div class="row" style="display:none;">
                                    <div class="tit">Все заказы</div>
                                    <div class="flex">
                                        <div id="search" class="form-group search">
                                            <div class="input-group">
                                                <input type="search" name="filter_order_id" placeholder="№ заказа, e-mail или телефон заказчика" value="" class="form-control">
                                                <button type="button"><img src="/img/ico/search.png" alt=""></button>
                                            </div>
                                        </div>
                                        <div class="period flex">
                                            <div class="tit">За период:</div>
                                            <form>
                                                <div class="form-group">
                                                    <input name="filter_date_added" class="form-control" placeholder="25.07.2019" type="date">
                                                </div>
                                                <div class="dash">-</div>
                                                <div class="form-group">
                                                    <input name="filter_date_modified" class="form-control" placeholder="25.07.2019" type="date">
                                                </div>
                                                <div class="bnt-block">
                                                    <button id="button-filter" class="btn">Показать</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

							</div><!-- admin_header -->
							
							<div class="admin_table" >
                                <div class="admin_table-header">
                                    <div class="tit h-1">№</div>
                                    <div class="tit h-2">Дата и время</div>
                                    <div class="tit h-3">Клиент</div>
                                    <div class="tit h-4">Город</div>
                                    <div class="tit h-5">Способ доставки</div>
                                    <div class="tit h-6">Товары</div>
                                    <div class="tit h-7">Сумма, грн</div>
                                    <div class="tit h-8">Статус</div>
                                </div>
                                
                                <div class="admin_table-body">
								<?php if ($orders) { ?>
                <?php foreach ($orders as $order) { ?>
                                    <div class="item one_order_info">
							         <button type="button" style="display: none;" data-toggle="tooltip" title="fafsdf" data-loading-text="load" class="btn btn-warning button-refresh"><i class="fa fa-refresh"></i></button>

									<button type="button" style="display: none;" class="btn btn-primary button-save" data-attr-order-id="<?=$order['order_id']?>"><i class="fa fa-check-circle"></i> </button>

                                                            <div class="errors"></div>
                                        <div class="table-header">
                                            <div class="h-1 m-t">
                                                <div class="tit tag"><span class="m-tit">№ заказа:</span><?=$order['order_id']?>
								<?php  if($order['buy_id'] == 2 && $order['status_id'] == 8) { ?>
													<img src="/img/ico/tag.png" alt="">
								<?php } ?>
												</div>
                                            </div>
                                            <div class="h-2 m-t">
                                                <div class="tit text-center"><span class="m-tit">Дата и время заказа:</span><?=$order['date_added']?></div>
                                            </div>
                                            <div class="h-3 m-t">
                                                <div class="tit"><span class="m-tit">Клиент:</span><?=$order['customer']?> <a href="mailto:<?=$order['email']?>" class="name"><?=$order['email']?></a></div>
                                            </div>
                                            <div class="h-4 m-t">
                                                <div class="tit"><span class="m-tit">Город:</span><?=$order['zone']?></div>
                                            </div>
                                            <div class="h-5 m-t">
                                                <div class="tit"><span class="m-tit">Способ доставки:</span><?=$order['shipping_method']?></div>
                                            </div>
                                            <div class="h-6 m-t">
                                                <div class="tit red-txt text-dotted"><span class="m-tit ">Количество товаров:</span><?=count($order['order_products'])?></div>
                                            </div>
                                            <div class="h-7 m-t">
                                                <div class="tit red-txt"><span class="m-tit">Сумма, грн:</span><span class="order_total_span"><?php echo $order['total']; ?></span></div>
                                            </div>
                                            <div class="h-8 m-t">
                                                <div class="tit">
                                                    <span class="m-tit">Статус:</span>
													<span class="status">
													<?php if($order['buy_id'] == 2) { ?>
													<img src="/img/ico/tag1.png" alt=""/>
													<?php } else { ?>
													<img src="/img/ico/tag2.png" alt=""/>
													<?php } ?>
													<?=$order['buy_status']?></span>
                                                    <span class="status">
													<?php if($order['status_id'] == 8) { ?>
													<img src="/img/ico/tag1.png" alt=""/>
													<?php } else { ?>
													<img src="/img/ico/tag3.png" alt=""/>
													<?php } ?><?=$order['order_status']?></span>
                                                </div>
                                            </div>
                                            <div class="arrow"><svg width="9px" height="6px"><path fill-rule="evenodd"  fill="rgb(92, 77, 71)"
 d="M8.707,1.707 L4.707,5.707 L4.500,5.500 L4.293,5.707 L0.293,1.707 L1.707,0.293 L4.500,3.085 L7.293,0.293 L8.707,1.707 Z"/></svg></div>
                                        </div>
                                        
                                        <div class="table-body">
                                            <div class="table-responsive table_products">
                                                <table class="one_order_products" data-attr-count_products="<?=count($order['order_products'])?>">
                                                    <tr>
                                                        <th></th>
                                                        <th>Фото</th>
                                                        <th>Цвет</th>
                                                        <th>Название</th>
                                                        <th>Грн/м2 </th>
                                                        <th>м<span class="m2">2</span></th>
                                                        <th>Стоимость, грн</th>
                                                    </tr>
													<?php if($order['order_products']) { ?>
													   <?php $product_row = 0; ?>
										<?php foreach($order['order_products'] as $order_product) {	 ?>
                                                    <tr class="one_product_row" data-attr-product_row="<?=$product_row?>">
                                                        <td class="text-center">
                                                            <a href="#" class="delete delete_product_from_cart"><img src="/img/ico/delete-button.png" alt="" /></a>
                                                        </td>
                                                        <td class="text-center">
                                                            <div class="img"><img src="/img/catalog/1.png" alt="" />
															<input type="hidden" name="product[<?php echo $product_row; ?>][product_id]"  value="<?=$order_product['product_id']?>">
															</div>
                                                        </td>
														
														<?php /* if($order_product['option']) {
													foreach($order_product['option'] as $option) { 	?>				 <?php if ($option['type'] == 'select' || $option['type'] == 'radio' || $option['type'] == 'image') { ?>
													<input type="hidden" name="product[<?php echo $product_row; ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['product_option_value_id']; ?>" />
																			<?php } ?>
														<td><?=$option['value']?></td>
														<?php } } else {
														?>
														<td></td>
														<?php } */ ?>

                                                        <td class="text-center">
                                                            <?php if($order_product['option']): ?>
                                                            <?php foreach ($order_product['option'] as $option) { ?>
                                                                <small><?php //echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                                                                <?php if ($option['type'] == 'select' || $option['type'] == 'radio' || $option['type'] == 'image') { ?>
                                                                    <input type="hidden" name="product[<?php echo $product_row; ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['product_option_value_id']; ?>" />
                                                                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['product_option_value_id']; ?>" />
                                                                <?php } ?>
                                                                <?php if ($option['type'] == 'checkbox') { ?>
                                                                    <input type="hidden" name="product[<?php echo $product_row; ?>][option][<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option['product_option_value_id']; ?>" />
                                                                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option['product_option_value_id']; ?>" />
                                                                <?php } ?>
                                                                <?php if ($option['type'] == 'text' || $option['type'] == 'textarea' || $option['type'] == 'file' || $option['type'] == 'date' || $option['type'] == 'datetime' || $option['type'] == 'time') { ?>
                                                                    <input type="hidden" name="product[<?php echo $product_row; ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" />
                                                                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" />
                                                                <?php } ?>
                                                            <?php } ?>
                                                            <?php endif; ?>
                                                        </td>

                                                        <td class="text-center"><?=$order_product['name']?></td>
                                                        <td class="text-center">
                                                            <div class="change_kol">
                                                                <input name="product[<?php echo $product_row; ?>][price_m]" class="form-control" placeholder="319" type="text" value="<?=$order_product['price_m'] ? $order_product['price_m'] : 1 ?>">
                                                            </div>
                                                        </td>
                                                        <td class="text-center column">
														    <div class="change_kol">
                                                                <input name="product[<?php echo $product_row; ?>][quantity]" value="<?=$order_product['quantity']?>" class="form-control product_quantity_input"  type="text">
                                                            </div>
                                                        </td>
                                                        <td><?=$order_product['total']?></td>
                                                    </tr>
													  <?php $product_row++; ?>
													<?php  } } ?>
                                                </table>
                                            </div>
                                            
                                            <div class="add-order">
                                            	<form>
                                                    <div class="row">
                                                        <div class="tit"><img src="/img/ico/add2.png" alt="" /> Добавить товар в этот заказ:</div>
                                                        <div class="form-group">
                                                            <label>Артикул</label>
                                                            <input class="form-control input-new_product" name="new_product" placeholder="Введите артикул" type="text">
                                                            <input class="form-control input-new_product_id" name="new_product_id" placeholder="Введите артикул" type="hidden">
                                                        </div>
                                                        <div class="">
                                                            <div class="option-for-new-product"></div>
                                                        </div>
                                                        <div class="form-group small-input">
                                                            <label>Грн/м2</label>
                                                            <input class="form-control input-new_product_price_m" type="text">
                                                        </div>
                                                        <div class="form-group small-input">
                                                            <label>м2</label>
                                                            <input class="form-control  input-new_product_quantity" type="text">
                                                        </div>
                                                        <div class="bnt-block">
                                                            <button class="add-new-product-button btn">Добавить</button>
                                                        </div>
                                                        <div class="clearfix" style="clear: both;"></div>
                                                        <div>

                                                        </div>
                                                    </div>
                                                </form>
                                            </div><!-- add-order -->

                                            <div class="total-block">
                                                <form class="total_block_form">
                                                    <div class="row">
                                                        <div class="form-group">
                                                            <label>Способ оплаты</label>
                                                            <div class="select">
                                                                <!-- <select class="form-control form-select">
                                                                   <option>LiqPay</option>
                                                                   <option>LiqPay</option>
                                                                   <option>LiqPay</option>
                                                               </select>-->

                                                                <select name="payment_method" class="form-control form-select">
                                                                    <option value="">-- Выберите --</option>


                                                                    <?php foreach ($payment_methods as $payment_method){ ?>
                                                                        <?php if ($order['order_info']['payment_code'] && $order['order_info']['payment_code'] == $payment_method['payment_code']) { ?>
                                                                            <option value="<?php echo $order['order_info']['payment_code']; ?>" selected="selected"><?php echo $order['order_info']['payment_method']; ?></option>
                                                                        <?php } else { ?>
                                                                            <option value="<?php echo $payment_method['payment_code']; ?>"><?php echo $payment_method['payment_method']; ?></option>

                                                                        <?php } ?>
                                                                    <?php } ?>

                                                                    <?php if($order['order_info']['payment_code']  && !in_array($order['order_info']['payment_code'],$payment_codes)) { ?>
                                                                        <option value="<?php echo $order['order_info']['payment_code']; ?>" selected="selected"><?php echo $order['order_info']['payment_method']; ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <label>Статус оплаты</label>
                                                            <div class="select">
                                                                <select name="buy_status_id" class="form-control form-select">
                                                                    <!--<option>Оплачен</option>
                                                                    <option>Не оплачен</option>-->
                                                                    <option value="">-- Выберите --</option>


                                                                    <?php foreach ($buy_statuses as $buy_status){ ?>
                                                                        <?php if ($order['buy_id'] && $order['buy_id'] == $buy_status['buy_status_id']) { ?>
                                                                            <option value="<?php echo $order['buy_id']; ?>" selected="selected"><?php echo $order['buy_status']; ?></option>
                                                                        <?php } else { ?>
                                                                            <option value="<?php echo $buy_status['buy_status_id']; ?>"><?php echo $buy_status['name']; ?></option>

                                                                        <?php } ?>
                                                                    <?php } ?>
                                                                </select>


                                                            </div>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <label>Статус заказа</label>
                                                            <div class="select">
                                                              <!--  <select class="form-control form-select">
                                                                    <option>Отправлен</option>
                                                                    <option>Ожидает оплаты</option>
                                                                </select>-->

                                                                <select name="order_status_id" id="input-order-status" class="form-control form-select">
                                                                    <?php foreach ($order_statuses as $order_status) { ?>
                                                                        <?php if ($order_status['order_status_id'] == $order['order_info']['order_status_id']) { ?>
                                                                            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                                                        <?php } else { ?>
                                                                            <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                                                        <?php } ?>
                                                                    <?php } ?>
                                                                </select>


                                                            </div>
                                                        </div>
                                                        <div class="total">Итого: <span class="order_total_span"><?=$order['total']?></span></div>
                                                    </div>
                                                </form>
                                            </div>
                                            
                                            <div class="info">
                                                <form class="order_info_form">
                                                    <div class="form_item">
                                                        <div class="tit">
                                                            <div class="img"><img src="/img/ico/resume.svg" alt=""></div>
                                                            <h2>Получатель</h2>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваша Фамилия</label>
                                                            <input name="order_id" class="form-control order_info_form_order_id" placeholder="Введите Ваше имя" type="hidden" value="<?=$order['order_id']?>">
                                                            <input name="lastname" class="form-control" placeholder="Введите Ваше имя" type="text" value="<?=$order['order_info']['lastname']?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваше имя</label>
                                                            <input name="firstname" class="form-control" placeholder="Введите Ваше имя" type="text" value="<?=$order['order_info']['firstname']?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваш телефон</label>
                                                            <input name="telephone" class="form-control" placeholder="+380 __ ___ __ __" type="tel"  value="<?=$order['order_info']['telephone']?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>E-mail</label>
                                                            <input name="email" class="form-control" placeholder="username@gmail.com" type="email" value="<?=$order['order_info']['email']?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваш комментарий</label>
                                                            <textarea name="comment"  class="form-control"><?=$order['order_info']['comment']?></textarea>
                                                        </div>



                                                    </div>

                                                    <div class="form_item block_with_shipping">
                                                        <div class="tit">
                                                            <div class="img"><img src="/img/ico/tracking.svg" alt=""></div>
                                                            <h2>Доставка</h2>
                                                        </div>
                                                        <div class="form-flex checkbox-flex">
                                                            <?php foreach ($shipping_methods as $shipping_method): ?>
                                                            <?php if($shipping_method['shipping_code'] == 'novaposhta.novaposhta'):   ?>
                                                            <div class="checkbox delivery-post">
                                                                <?php else: ?>
                                                                <div class="checkbox delivery-pickup">
                                                                    <?php endif; ?>

                                                                    <?php if ($shipping_method['shipping_code'] == $order['order_info']['shipping_code'] || !$order['order_info']['shipping_code']) { ?>
                                                                        <?php $code = $shipping_method['shipping_code']; ?>
                                                                        <input type="radio" class="custom-control-input" id="radio-<?php echo $shipping_method['shipping_code']; ?>-<?=$order['order_id']?>" name="shipping_method" value="<?php echo $shipping_method['shipping_code']; ?>" checked="checked" />
                                                                        <label for="radio-<?php echo $shipping_method['shipping_code']; ?>-<?=$order['order_id']?>">
                                                <span class="check-block">
                                                    <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd"  stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)"
                                                                                                     d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"/></svg>
                                 <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd"  fill="rgb(59, 53, 53)"
                                                                                    d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"/></svg>
                                                 </span> <?php echo $shipping_method['shipping_method']; ?>
                                                                        </label>
                                                                    <?php } else { ?>
                                                                        <input type="radio" name="shipping_method" id="radio-<?php echo $shipping_method['shipping_code']; ?>-<?=$order['order_id']?>" value="<?php echo $shipping_method['shipping_code']; ?>" />
                                                                        <label for="radio-<?php echo $shipping_method['shipping_code']; ?>-<?=$order['order_id']?>">
                                                <span class="check-block">
                                                    <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd"  stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)"
                                                                                                     d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"/></svg>
                                 <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd"  fill="rgb(59, 53, 53)"
                                                                                    d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"/></svg>
                                                 </span> <?php echo $shipping_method['shipping_method']; ?>
                                                                        </label>
                                                                    <?php } ?>


                                                                </div>

                                                                <?php endforeach; ?>

                                                            </div>
                                                            <?php
                                                            $is_active = '';
                                                            if($order['order_info']['shipping_code'] == 'novaposhta.novaposhta'){
                                                                $is_active = 'active';
                                                            }
                                                            ?>

                                                        <div class="delivery-new <?=$is_active?>">

                                                            <div class="form-group required">
                                                                <label for="input-payment-country-<?=$order['order_id']?>"><?php echo 'Область'; ?></label>
                                                                <div class="select">
                                                                    <select name="country_id" id="input-payment-country-<?=$order['order_id']?>" class="form-control form-select country_custom_select">
                                                                        <option value=""><?php echo $text_select; ?></option>
                                                                        <?php foreach ($countries as $country) { ?>
                                                                            <?php if ($country['country_id'] == $order['order_info']['payment_country_id']) { ?>
                                                                                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                                                            <?php } else { ?>
                                                                                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                                            <?php } ?>
                                                                        <?php } ?>
                                                                    </select>
                                                                </div>
                                                            </div>





                                                            <div class="form-group">
                                                                <label class="control-label" for="input-payment-zone-<?=$order['order_id']?>"><?php echo 'Город'; ?></label>
                                                                <div class="select">
                                                                    <select name="zone_id" id="input-payment-zone-<?=$order['order_id']?>" class="form-control form-select zone_custom_select">
                                                                        <?php if($order['order_zones']): ?>
                                                                        <option value=""><?php echo $text_select; ?></option>
                                                                        <?php foreach ($order['order_zones'] as $order_zone) { ?>
                                                                            <?php if ($order_zone['zone_id'] == $order['order_info']['payment_zone_id']) { ?>
                                                                                <option value="<?php echo $order_zone['zone_id']; ?>" selected="selected"><?php echo $order_zone['name']; ?></option>
                                                                            <?php } else { ?>
                                                                                <option value="<?php echo $order_zone['zone_id']; ?>"><?php echo $order_zone['name']; ?></option>
                                                                            <?php } ?>
                                                                        <?php } ?>
                                                                        <?php endif; ?>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group required">
                                                                <label for="input-shipping-city-<?=$order['order_id']?>"><?php echo 'Отделение'; ?></label>
                                                                <div class="select">
                                                                    <select name="city" id="input-payment-city-<?=$order['order_id']?>" class="form-control form-select city_custom_select">
                                                                        <?php if($order['order_cities']): ?>
                                                                            <option value=""><?php echo $text_select; ?></option>
                                                                            <?php foreach ($order['order_cities'] as $order_city) { ?>
                                                                                <?php if ($order_city['name'] == $order['order_info']['payment_city']) { ?>
                                                                                    <option value="<?php echo $order_city['name']; ?>" selected="selected"><?php echo $order_city['name']; ?></option>
                                                                                <?php } else { ?>
                                                                                    <option value="<?php echo $order_city['name']; ?>"><?php echo $order_city['name']; ?></option>
                                                                                <?php } ?>
                                                                            <?php } ?>
                                                                        <?php endif; ?>
                                                                    </select>
                                                                </div>
                                                            </div>


                                                            <!--
                                                            <div class="form-group">
                                                                <label>Город</label>
                                                                <input class="form-control" placeholder="Введите Ваше имя" type="text">
                                                            </div>
                                                            <div class="form-flex">
                                                                <div class="form-group">
                                                                    <label>Отделение</label>
                                                                    <div class="select">
                                                                        <select class="form-control form-select">
                                                                            <option disabled="">Номер</option>
                                                                            <option>1</option>
                                                                            <option>2</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="checkbox">
                                                                        <input type="checkbox" class="custom-control-input" id="check-a">
                                                                        <label for="check-a">
                                                                            <span class="check-block">
                                                                                                   <svg width="9px" height="7px"><path fill-rule="evenodd" fill="rgb(249, 244, 238)" d="M8.992,0.956 L4.108,5.847 L4.304,6.044 L3.357,6.992 L3.160,6.796 L2.964,6.992 L2.017,6.044 L2.213,5.847 L0.008,3.639 L0.955,2.690 L3.160,4.899 L8.045,0.008 L8.992,0.956 Z"></path></svg>
                                                                                                </span> Адресная доставка
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Введите адрес доставки</label>
                                                                <input class="form-control" placeholder="Введите адрес" type="text">
                                                            </div>
                                                            -->
                                                        </div>
                                                        <div class="bnt-block">
                                                            <button type="submit" class="btn custom_save_order">Сохранить</button>
                                                            <p class="save_order_success">Успешно сохранено!</p>
                                                        </div>
                                                    </div>
                                                    
                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- item -->
								<?php }
								} ?>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                                        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                                    </div>
                                </div>




                            </div>
                    </div>


</section>


  </div>



  <script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	url = 'index.php?route=sale/order&token=<?php echo $token; ?>';

	var filter_order_id = $('input[name=\'filter_order_id\']').val();

	if (filter_order_id) {
		url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
	}

	var filter_customer = $('input[name=\'filter_customer\']').val();

	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}

	var filter_order_status = $('select[name=\'filter_order_status\']').val();

	if (filter_order_status != '*') {
		url += '&filter_order_status=' + encodeURIComponent(filter_order_status);
	}

	var filter_total = $('input[name=\'filter_total\']').val();

	if (filter_total) {
		url += '&filter_total=' + encodeURIComponent(filter_total);
	}

	var filter_date_added = $('input[name=\'filter_date_added\']').val();

	if (filter_date_added) {
		url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
	}

	var filter_date_modified = $('input[name=\'filter_date_modified\']').val();

	if (filter_date_modified) {
		url += '&filter_date_modified=' + encodeURIComponent(filter_date_modified);
	}

	location = url;
});
//--></script>
  <script type="text/javascript"><!--
$('input[name=\'filter_customer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=customer/customer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['customer_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_customer\']').val(item['label']);
	}
});
//--></script>
  <script type="text/javascript"><!--
$('input[name^=\'selected\']').on('change', function() {
	$('#button-shipping, #button-invoice').prop('disabled', true);

	var selected = $('input[name^=\'selected\']:checked');

	if (selected.length) {
		$('#button-invoice').prop('disabled', false);
	}

	for (i = 0; i < selected.length; i++) {
		if ($(selected[i]).parent().find('input[name^=\'shipping_code\']').val()) {
			$('#button-shipping').prop('disabled', false);

			break;
		}
	}
});

$('#button-shipping, #button-invoice').prop('disabled', true);

$('input[name^=\'selected\']:first').trigger('change');

// IE and Edge fix!
$('#button-shipping, #button-invoice').on('click', function(e) {
	$('#form-order').attr('action', this.getAttribute('formAction'));
});

$('#button-delete').on('click', function(e) {
	$('#form-order').attr('action', this.getAttribute('formAction'));

	if (confirm('<?php echo $text_confirm; ?>')) {
		$('#form-order').submit();
	} else {
		return false;
	}
});
//--></script> 
  <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
  <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
  <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});
//--></script>








    <script>
        $(document).on("ready", function () {
            // $(".admin-item > .item").click(function () {
            //     if($(this).parent(".admin-item").hasClass('active')){
            //         $(this).parent(".admin-item").removeClass("active");
            //     } else  {
            //         $(".admin-item").removeClass("active");
            //         $(this).parent('.admin-item').addClass('active');
            //     }
            // });


            $(document).on('click','.edit_order_link',function (e) {
                e.preventDefault();

                $('#modal-image').remove();
                $.ajax({
                    url: $(this).attr('href'),
                    dataType: 'html',
                    success: function(html) {
                        $('body').append('<div id="modal-image" class="modal">' + html + '</div>');
                        $('#modal-image').modal('show');
                    }
                });
            });

            $(document).on('click','.create-order',function (e) {
                e.preventDefault();
                $('#modal-image').remove();
                $.ajax({
                    url: $(this).attr('href'),
                    dataType: 'html',
                    success: function(html) {
                        $('body').append('<div id="modal-image" class="modal">' + html + '</div>');

                        $('#modal-image').modal('show');
                    }
                });
            });








            var token = '';
// Login to the API
            $.ajax({
                url: '<?php echo $catalog; ?>index.php?route=api/login',
                type: 'post',
                dataType: 'json',
                data: 'key=<?php echo $api_key; ?>',
                crossDomain: true,
                success: function(json) {
                    $('.alert').remove();
                    if (json['error']) {
                        if (json['error']['key']) {
                            $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['key'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                        }

                        if (json['error']['ip']) {
                            $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['ip'] + ' <button type="button" id="button-ip-add" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i> <?php echo $button_ip_add; ?></button></div>');
                        }
                    }

                    if (json['token']) {
                        token = json['token'];
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });


            //CHANGE ORDER STATUS
            //CHANGE ORDER STATUS
            //CHANGE ORDER STATUS
            // $(document).on('click', '.button-history-change', function(e) {
            //     e.preventDefault();
            //     let changed_status_info = $(this);
            //     let changed_status_info_text = $(this).text();
            //     let changed_status_class = changed_status_info.attr('data-attr-order_status_class');
            //     // let data-attr-order_status_class
            //     let changed_order_status_block = $(this).closest('.admin-item').find('.order_status_block');
            //     let changed_order_status_title = $(this).closest('.admin-item').find('.order_status_title');
            //
            //     if(changed_order_status_block.hasClass(changed_status_info.attr('data-attr-order_status_class'))){
            //         return false;
            //     }
            //
            //     $.ajax({
            //         url: $(this).attr('href')+'&token=' + token,
            //         type: 'post',
            //         dataType: 'json',
            //         data: 'order_status_id=' + encodeURIComponent($(this).attr('data-order_status_id')),
            //         success: function(json) {
            //             console.log(json)
            //             changed_status_info.parent().find('.alert').remove();
            //             if (json['error']) {
            //                 changed_status_info.parent().find('.errors').before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
            //             }
            //
            //             if (json['success']) {
            //                 // $('.order_status_block')
            //                 // $('.order_status_title')
            //                 changed_order_status_block.removeAttr('class');
            //                 changed_order_status_title.removeAttr('class');
            //                 changed_order_status_block.attr('class','item order_status_block '+changed_status_class);
            //                 changed_order_status_title.attr('class','tit order_status_title  '+changed_status_class);
            //                 changed_order_status_title.text(changed_status_info_text);
            //             }
            //         },
            //         error: function(xhr, ajaxOptions, thrownError) {
            //             alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            //         }
            //     });
            // });
            //CHANGE ORDER STATUS
            //CHANGE ORDER STATUS
            //CHANGE ORDER STATUS

            //Минус плюс
            $(document).ready(function() {
                // $(document).on('click','.minus',function () {
                //     var $input = $(this).parent().find('input');
                //     var count = parseInt($input.val()) - 1;
                //     count = count < 1 ? 1 : count;
                //     $input.val(count);
                //     $input.change();
                //     return false;
                // });
                // $(document).on('click','.plus',function () {
                //     var $input = $(this).parent().find('input');
                //     $input.val(parseInt($input.val()) + 1);
                //     $input.change();
                //     return false;
                // });




                $(document).on('click','.delete_product_from_cart',function (e) {
                    e.preventDefault();
                    let count_order_products = $(this).closest('.one_order_products').attr('data-attr-count_products');
                    if(count_order_products > 1){
                            var $input = $(this).closest('.one_product_row').find('.product_quantity_input');
                        $input.val(0);
                        $input.change();
                    } else {
                        alert('Заказ не может быть пустой');
                    }

                    return false;
                });




                $(document).delegate('.change_kol input', 'change', function() {
                    var node = this;
                    var node_input = $(this);

                    // Refresh products, vouchers and totals
                    $.ajax({
                        url: '/index.php?route=api/cart/add&token=' + token + '&store_id=0',
                        type: 'post',
                        data: node_input.closest('.one_order_info').find('input[name^=\'product\'][type=\'text\'], input[name^=\'product\'][type=\'hidden\'], input[name^=\'product\'][type=\'radio\']:checked, input[name^=\'product\'][type=\'checkbox\']:checked, select[name^=\'product\'], textarea[name^=\'product\']'),
                        dataType: 'json',
                        crossDomain: true,
                        // beforeSend: function() {
                        //     $(node).button('loading');
                        // },
                        // complete: function() {
                        //     $(node).button('reset');
                        // },
                        success: function(json) {
                            $('.alert, .text-danger').remove();
                            $('.form-group').removeClass('has-error');

                            if (json['error'] && json['error']['warning']) {
                                $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                            }

                            if (json['success']) {
                                $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    }).done(function() {
                        node_input.closest('.one_order_info').find('.button-refresh').trigger('click');
                    });
                });








// Add all products to the cart using the api
                $(document).on('click', '.button-refresh', function() {
                    let button_refresh = $(this);
                    $.ajax({
                        url: '<?php echo $catalog; ?>index.php?route=api/cart/products&token=' + token + '&store_id=' + $('select[name=\'store_id\'] option:selected').val(),
                        dataType: 'json',
                        crossDomain: true,
                        success: function(json) {
                            console.log(json);
                            $('.alert-danger, .text-danger').remove();

                            // Check for errors
                            if (json['error']) {
                                if (json['error']['warning']) {
                                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                                }

                                if (json['error']['stock']) {
                                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['stock'] + '</div>');
                                }

                                if (json['error']['minimum']) {
                                    for (i in json['error']['minimum']) {
                                        $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['minimum'][i] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                                    }
                                }
                            }

                            var shipping = false;

                            let html = '';

                            if (json['products'].length) {
                                html = '<table class="one_order_products" data-attr-count_products="'+json['products'].length+'">';
                                html += '   <tbody>';
                                html += '   <tr>';
                                html += '       <th></th>';
                                html += '       <th>Фото</th>';
                                html += '       <th>Цвет</th>';
                                html += '       <th>Название</th>';
                                html += '       <th>Грн/м2 </th>';
                                html += '       <th>м<span class="m2">2</span></th>';
                                html += '       <th>Стоимость, грн</th>';
                                html += '   </tr>';





                                for (i = 0; i < json['products'].length; i++) {
                                    product = json['products'][i];
                                    html += '<tr class="one_product_row" data-attr-product_row="'+i+'">';
                                    html +=  '<td class="text-center"><a href="#" class="delete delete_product_from_cart"><img src="/img/ico/delete-button.png" alt=""></a></td>';
                                    html +=  '<td class="text-center">';
                                    html += '   <div class="img">';
                                    html += '       <img src="/img/catalog/1.png" alt="">';
                                    html += '       <input type="hidden" name="product[' + i + '][product_id]" value="' + product['product_id'] + '" />';
                                    html += '   </div>'
                                    html += '</td>';


                                    html += '  <td class="text-center"> ' + (!product['stock'] ? '<span class="text-danger">***</span>' : '') + ' ';
                                   // html += '  <input type="hidden" name="product[' + i + '][product_id]" value="' + product['product_id'] + '" />';
                                   // html += '  <input class="is_present_input" type="hidden" name="product[' + i + '][is_present]" value="' + product['is_present'] + '" />';

                                    if (product['option']) {
                                        for (j = 0; j < product['option'].length; j++) {
                                            option = product['option'][j];
                                            // html += '  - <small>' + option['name'] + ': ' + option['value'] + '</small><br />';
                                            html += '<small>'+ option['value'] + '</small><br />';
                                            if (option['type'] == 'select' || option['type'] == 'radio' || option['type'] == 'image') {
                                                html += '<input type="hidden" name="product[' + i + '][option][' + option['product_option_id'] + ']" value="' + option['product_option_value_id'] + '" />';
                                                html += '<input type="hidden" name="option[' + option['product_option_id'] + ']" value="' + option['product_option_value_id'] + '" />';
                                            }

                                            if (option['type'] == 'checkbox') {
                                                html += '<input type="hidden" name="product[' + i + '][option][' + option['product_option_id'] + '][]" value="' + option['product_option_value_id'] + '" />';
                                                html += '<input type="hidden" name="option[' + option['product_option_id'] + '][]" value="' + option['product_option_value_id'] + '" />';

                                            }

                                            if (option['type'] == 'text' || option['type'] == 'textarea' || option['type'] == 'file' || option['type'] == 'date' || option['type'] == 'datetime' || option['type'] == 'time') {
                                                html += '<input type="hidden" name="product[' + i + '][option][' + option['product_option_id'] + ']" value="' + option['value'] + '" />';
                                                html += '<input type="hidden" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" />';
                                            }
                                        }
                                    }
                                    html += '</td>';

                                    html +=  '<td class="text-center">'+ product['name']+'</td>';


                                    html +=  '<td class="text-center">';
                                    html +=  '   <div class="change_kol">';
                                    html +=  '      <input name="product[' + i + '][price_m]" class="form-control" placeholder="319" type="text" value="'+product['price_m']+'">';
                                    html +=  '  </div>';
                                    html +=  '</td>';

                                    html +=  '<td class="text-center">';
                                    html +=  '   <div class="change_kol">';
                                    html +=  '      <input name="product[' + i + '][quantity]" class="form-control product_quantity_input" placeholder="319" type="text" value="'+product['quantity']+'">';
                                    html +=  '  </div>';
                                    html +=  '</td>';


                                    // html += '<td class="t-4">';
                                    // html += '   <div class="kol">';
                                    // html += '       <span class="minus">-</span>';
                                    // html += '       <input class="product_quantity_input" name="product['+i+'][quantity]" type="text" value="'+product['quantity']+'">';
                                    // html += '       <span class="plus">+</span>';
                                    // html += '   </div>';
                                    // html += '</td>';
                                    html +=  '<td class="text-center">'+ product['total']+'</td>';

                                    html += '</tr>';
                                }



                                html += '</tbody>';
                                html += '</table>';
                            }


                            if (!json['products'].length && !json['vouchers'].length) {
                                html += '<tr>';
                                html += '  <td colspan="6" class="text-center"><?php echo $text_no_results; ?></td>';
                                html += '</tr>';
                            }

                            button_refresh.closest('.one_order_info').find('.table_products').html(html);
                            console.log(html)
                            // $('.table_products').append(html);



                            //html = '';
                            //if (json['totals'].length) {
                            //    for (i in json['totals']) {
                            //        total = json['totals'][i];
                            //
                            //        let dop_total_class = '';
                            //        if(total['title'] == 'Итого'){
                            //            dop_total_class = 'tot';
                            //        }
                            //
                            //        html += '<p>';
                            //        html += '  <span class="tit">' + total['title'] + ':</span>';
                            //        html += '  <span class="value text-nowrap '+dop_total_class+'">' + total['text'] + '</span>';
                            //        html += '</p>';
                            //    }
                            //}
                            //
                            //if (!json['totals'].length && !json['products'].length && !json['vouchers'].length) {
                            //    html += '<p  class="text-center">';
                            //    html += '  <span class="text-center"><?php //echo $text_no_results; ?>//</span>';
                            //    html += '</p>';
                            //}
                            //
                            //button_refresh.closest('.one_order_info').find('.total-block').html(html);

                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    }).done(function() {
                        button_refresh.closest('.one_order_info').find('.button-save').trigger('click');
                    });
                });





// Checkout
                $(document).on('click', '.button-save', function() {
                    var button_save = $(this);
                    var url = '<?php echo $catalog; ?>index.php?route=api/order/edit_ajax&token=' + token + '&store_id=' + $('select[name=\'store_id\'] option:selected').val() + '&order_id=' + $(this).attr('data-attr-order-id');
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: $('select[name=\'payment_method\'] option:selected,  select[name=\'shipping_method\'] option:selected,  #tab-total select[name=\'order_status_id\'], #tab-total select, #tab-total textarea[name=\'comment\'], #tab-total input[name=\'affiliate_id\']'),
                        dataType: 'json',
                        crossDomain: true,
                        success: function(json) {
                            if (json['error']) {
                                alert('Errorsss');
                            }

                            if (json['success']) {
                                button_save.closest('.one_order_info').find('.order_total_span').text(json['order_total']);
                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                });








                $(document).on('click','.delete_item_multi_linnk',function (e) {
                    e.preventDefault();
                    var panel_is_active = 1;
                    $('.multi-booking-tab-head-item').each(function () {
                        if($(this).hasClass('active')){
                            panel_is_active = $(this).attr('data-attr-reservation_panel');
                        }
                    });
                    console.log(panel_is_active);

                    var panel_number = $(this).attr('data-attr-reservation_delete');
                    var new_action = $(this).attr('href');
                    $('.tabssss_content').load(new_action + '#reservation-form .tabssss_content .gallery-content');

                    $('.multi-booking-tab-head-item[data-attr-reservation_panel="'+panel_number+'"]').remove();
                    $('.multi-booking-tab-item[data-attr-reservation_panel_content="'+panel_number+'"]').remove();
                    $('#reservation-form').attr('action', new_action);

                    var k = 0;
                    $('.multi-booking-tab-item').each(function () {
                        k = k + 1;
                        $(this).find('.add-new-client-form input').each(function () {
                            var old_name = $(this).attr('name');
                            var old_name_explode = explode('sunny[guests][',old_name);
                            var old_name_explode2 = explode('][',old_name_explode[1]);
                            var new_attr_name = 'sunny[guests]['+k+']['+old_name_explode2[1]+']['+old_name_explode2[2];
//                console.log(new_attr_name);
                            $(this).attr('name',new_attr_name);

                        });

                        var wish_old_name =  $(this).find('.booking-final-special-request textarea').attr('name');
                        var wish_old_name_explode = explode('sunny[reservations][',wish_old_name);
                        var wish_old_name_explode2 = explode('][',wish_old_name_explode[1]);
                        var new_attr_wish_name = 'sunny[reservations]['+k+']['+wish_old_name_explode2[1];
                        $(this).find('.booking-final-special-request textarea').attr('name',new_attr_wish_name);

                    });

                    var j = 0;
                    $('.head-panek-link strong').each(function () {
                        j = j+1;
                        $(this).text('Панель '+j)
                    });



                    if(panel_is_active == panel_number){
                        $('.multi-booking-tab-head-item').each(function () {
                            $(this).removeClass('active');
                        });
                        $('.multi-booking-tab-item').each(function () {
                            $(this).removeClass('active');
                        });

                        var panel_number_next = 1;
                        $('.multi-booking-tab-head-item[data-attr-reservation_panel="'+panel_number_next+'"]').addClass('active');
                        $('#'+panel_number_next).addClass('active');
                    }

//        data-attr-reservation_delete="<?//=$number_search?>//"
                });







            });



            function explode( delimiter, string ) {	// Split a string by string
                //
                // +   original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
                // +   improved by: kenneth
                // +   improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)

                var emptyArray = { 0: '' };

                if ( arguments.length != 2
                    || typeof arguments[0] == 'undefined'
                    || typeof arguments[1] == 'undefined' )
                {
                    return null;
                }

                if ( delimiter === ''
                    || delimiter === false
                    || delimiter === null )
                {
                    return false;
                }

                if ( typeof delimiter == 'function'
                    || typeof delimiter == 'object'
                    || typeof string == 'function'
                    || typeof string == 'object' )
                {
                    return emptyArray;
                }

                if ( delimiter === true ) {
                    delimiter = '1';
                }

                return string.toString().split ( delimiter.toString() );
            }









            $('.one_order_info input.input-new_product').autocomplete({
                'source': function(request, response) {
                    $.ajax({
                        url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
                        dataType: 'json',
                        success: function(json) {
                            response($.map(json, function(item) {
                                return {
                                    label: item['name'],
                                    value: item['product_id'],
                                    model: item['model'],
                                    option: item['option'],
                                    price: item['price']
                                }
                            }));
                        }
                    });
                },
                'select': function(item) {

                    $(this).closest('.add-order').find('input.input-new_product').val(item['label']);
                    $(this).closest('.add-order').find('input.input-new_product_id').val(item['value']);

                    if (item['option'] != '') {
                        let html  = '<fieldset>';

                        for (i = 0; i < item['option'].length; i++) {
                            option = item['option'][i];

                            if (option['type'] == 'select') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20">';
                                html += '    <select name="option[' + option['product_option_id'] + ']" id="input-option' + option['product_option_id'] + '" class="form-control form-select">';
                                html += '      <option value=""><?php echo $text_select; ?></option>';

                                for (j = 0; j < option['product_option_value'].length; j++) {
                                    option_value = option['product_option_value'][j];

                                    html += '<option value="' + option_value['product_option_value_id'] + '">' + option_value['name'];

                                    if (option_value['price']) {
                                        html += ' (' + option_value['price_prefix'] + option_value['price'] + ')';
                                    }

                                    html += '</option>';
                                }

                                html += '    </select>';
                                html += '  </div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'radio') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20">';
                                html += '    <select name="option[' + option['product_option_id'] + ']" id="input-option' + option['product_option_id'] + '" class="form-control form-select">';
                                html += '      <option value=""><?php echo $text_select; ?></option>';

                                for (j = 0; j < option['product_option_value'].length; j++) {
                                    option_value = option['product_option_value'][j];

                                    html += '<option value="' + option_value['product_option_value_id'] + '">' + option_value['name'];

                                    if (option_value['price']) {
                                        html += ' (' + option_value['price_prefix'] + option_value['price'] + ')';
                                    }

                                    html += '</option>';
                                }

                                html += '    </select>';
                                html += '  </div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'checkbox') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20">';
                                html += '    <div id="input-option' + option['product_option_id'] + '">';

                                for (j = 0; j < option['product_option_value'].length; j++) {
                                    option_value = option['product_option_value'][j];

                                    html += '<div class="checkbox">';

                                    html += '  <label><input type="checkbox" name="option[' + option['product_option_id'] + '][]" value="' + option_value['product_option_value_id'] + '" /> ' + option_value['name'];

                                    if (option_value['price']) {
                                        html += ' (' + option_value['price_prefix'] + option_value['price'] + ')';
                                    }

                                    html += '  </label>';
                                    html += '</div>';
                                }

                                html += '    </div>';
                                html += '  </div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'image') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20">';
                                html += '    <select name="option[' + option['product_option_id'] + ']" id="input-option' + option['product_option_id'] + '" class="form-control form-select">';
                                html += '      <option value=""><?php echo $text_select; ?></option>';

                                for (j = 0; j < option['product_option_value'].length; j++) {
                                    option_value = option['product_option_value'][j];

                                    html += '<option value="' + option_value['product_option_value_id'] + '">' + option_value['name'];

                                    if (option_value['price']) {
                                        html += ' (' + option_value['price_prefix'] + option_value['price'] + ')';
                                    }

                                    html += '</option>';
                                }

                                html += '    </select>';
                                html += '  </div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'text') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20"><input type="text" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" id="input-option' + option['product_option_id'] + '" class="form-control" /></div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'textarea') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20"><textarea name="option[' + option['product_option_id'] + ']" rows="5" id="input-option' + option['product_option_id'] + '" class="form-control">' + option['value'] + '</textarea></div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'file') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-20">';
                                html += '    <button type="button" id="button-upload' + option['product_option_id'] + '" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>';
                                html += '    <input type="hidden" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" id="input-option' + option['product_option_id'] + '" />';
                                html += '  </div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'date') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-3"><div class="input-group date"><input type="text" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" placeholder="' + option['name'] + '" data-date-format="YYYY-MM-DD" id="input-option' + option['product_option_id'] + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'datetime') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-3"><div class="input-group datetime"><input type="text" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" placeholder="' + option['name'] + '" data-date-format="YYYY-MM-DD HH:mm" id="input-option' + option['product_option_id'] + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
                                html += '</div>';
                            }

                            if (option['type'] == 'time') {
                                html += '<div class="form-group' + (option['required'] ? ' required' : '') + '">';
                                html += '  <label class="col-sm-12 control-label" for="input-option' + option['product_option_id'] + '">' + option['name'] + '</label>';
                                html += '  <div class="col-sm-3"><div class="input-group time"><input type="text" name="option[' + option['product_option_id'] + ']" value="' + option['value'] + '" placeholder="' + option['name'] + '" data-date-format="HH:mm" id="input-option' + option['product_option_id'] + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
                                html += '</div>';
                            }
                        }

                        html += '</fieldset>';

                        $(this).closest('.add-order').find('.option-for-new-product').html(html);

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
                    } else {
                        // $('#option').html('');
                        $(this).closest('.add-order').find('.option-for-new-product').html('');

                    }
                }
            });


            $(document).on('click','.add-new-product-button',function (e) {
                e.preventDefault();
                let table = $(this).closest('.one_order_info').find('.one_order_products');
                let formAddProduct = $(this).closest('.add-order').find('form');
                let count_order_products = table.attr('data-attr-count_products');


                let selectColor = $(this).closest('.add-order').find('.form-select');
                if((selectColor.hasClass('form-select') && selectColor.val()=='') || $(this).closest('.add-order').find('.input-new_product_price_m').val()=='' || $(this).closest('.add-order').find('.input-new_product_quantity').val()==''){
                    alert('Заполните все поля');
                }


                let product_id = $(this).closest('.add-order').find('.input-new_product_id').val();

                let html = '';

                html += '<tr class="one_product_row new_product_row" data-attr-product_row="'+count_order_products+'" style="display: none;">';

                html +=  '<td class="text-center"><a href="#" class="delete delete_product_from_cart"><img src="/img/ico/delete-button.png" alt=""></a></td>';
                html +=  '<td class="text-center">';
                html += '   <div class="img">';
                html += '       <img src="/img/catalog/1.png" alt="">';
                html += '       <input type="hidden" name="product[' + count_order_products + '][product_id]" value="' + product_id + '" />';
                html += '   </div>';
                html += '</td>';


                if(selectColor.hasClass('form-select')){
                    html += '  <td class="text-center">';
                    html += '       <small> '+$(this).closest('.add-order').find('.form-select').val()+'</small><br>';
                    html += '       <input type="hidden" name="product[' + count_order_products + '][option][255]" value="'+$(this).closest('.add-order').find('.form-select').val()+'">';
                    html += '       <input type="hidden" name="option[255]" value="'+$(this).closest('.add-order').find('.form-select').val()+'">';
                    html += '</td>';
                } else {
                    '<td>-</td>';
                }

                // console.log($(this).closest('.add-order').find('.form-select').val())


                // option-for-new-product
                    // option-for-new-product


                // html
            // <td class="text-center">
            //         <small> Коричневый</small><br>
            //         <input type="hidden" name="product[1][option][255]" value="41">
            //         <input type="hidden" name="option[255]" value="41">
            //         </td>


                html +=  '<td class="text-center">-</td>';


                html +=  '<td class="text-center">';
                html +=  '   <div class="change_kol">';
                html +=  '      <input name="product[' + count_order_products + '][price_m]" class="form-control" placeholder="319" type="text" value="'+$(this).closest('.add-order').find('.input-new_product_price_m').val()+'">';
                html +=  '  </div>';
                html +=  '</td>';

                html +=  '<td class="text-center">';
                html +=  '   <div class="change_kol">';
                html +=  '      <input name="product[' + count_order_products + '][quantity]" class="form-control product_quantity_input" placeholder="319" type="text" value="0">';
                html +=  '  </div>';
                html +=  '</td>';


                // html += '<td class="t-4">';
                // html += '   <div class="kol">';
                // html += '       <span class="minus">-</span>';
                // html += '       <input class="product_quantity_input" name="product['+i+'][quantity]" type="text" value="'+product['quantity']+'">';
                // html += '       <span class="plus">+</span>';
                // html += '   </div>';
                // html += '</td>';
                html +=  '<td class="text-center">-</td>';

                html += '</tr>';

                table.append(html);
                console.log(html);

                    var $input = table.find('.new_product_row').find('.product_quantity_input');
                    $input.val($(this).closest('.add-order').find('.input-new_product_quantity').val());
                    $input.change();
                //
                formAddProduct[0].reset();

                formAddProduct.find('.option-for-new-product').html('');
            });


            // $(document).on('click','.product_is_present',function (e) {
            //     e.preventDefault();
            //
            //     let table = $(this).closest('.one_order_products');
            //     let product_id = $(this).attr('data-attr-product_id');
            //     let count_order_products = table.attr('data-attr-count_products');
            //     let node_input_row = $(this).closest('.one_product_row').attr('data-attr-product_row');
            //     console.log();
            //
            //     let html = '<tr class="one_product_row new_present_add" data-attr-product_row="'+count_order_products+'">'+$(this).closest('.one_product_row').html()+'></tr>';
            //
            //     var newstr = html.split("["+node_input_row+"]").join("["+count_order_products+"]");
            //     table.append(newstr);
            //
            //
            //     table.find('.new_present_add').find('.is_present_input').val(10);
            //
            //     var $input = table.find('.new_present_add').find('.product_quantity_input');
            //     $input.val(1);
            //     $input.change();
            //
            //     return false;
            //
            // });





            $('.country_custom_select').on('change', function() {
                let one_order_country_id_select = $(this);
                let one_order_zone_id_select = $(this).closest('.order_info_form').find('.zone_custom_select');
                let one_order_city_select = $(this).closest('.order_info_form').find('.city_custom_select');
                $.ajax({
                    url: 'index.php?route=localisation/country/country&token=<?php echo $token; ?>&country_id=' + this.value,
                    dataType: 'json',
                    beforeSend: function() {
                        one_order_country_id_select.after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
                    },
                    complete: function() {
                        one_order_country_id_select.closest('.order_info_form').find('.fa-spin').remove();
                    },
                    success: function(json) {


                        let html = '<option value=""><?php echo $text_select; ?></option>';

                        if (json['zone'] && json['zone'] != '') {
                            for (i = 0; i < json['zone'].length; i++) {
                                html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                                // if (json['zone'][i]['zone_id'] == shipping_zone_id) {
                                //     html += ' selected="selected"';
                                // }

                                html += '>' + json['zone'][i]['name'] + '</option>';
                            }
                        } else {
                            html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                        }

                        one_order_zone_id_select.html(html);


                        one_order_city_select.html('<option value=""><?php echo $text_select; ?></option>');
                        one_order_zone_id_select.trigger('change');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            });



            $('.zone_custom_select').on('change', function() {
                // country_custom_select
                //zone_custom_select
                let one_order_zone_id_select = $(this);
                let one_order_country_id_select = $(this).closest('.order_info_form').find('.country_custom_select');
                let one_order_city_select = $(this).closest('.order_info_form').find('.city_custom_select');

                if (this.value == '') return;
                $.ajax({
                    url: 'index.php?route=sale/order/zone&token=<?php echo $token; ?>&zone_id=' + this.value,
                    dataType: 'json',
                    beforeSend: function() {
                        one_order_zone_id_select.after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
                    },
                    complete: function() {
                        $('.fa-spin').remove();
                    },
                    success: function(json) {
                        $('.fa-spin').remove();

                        html = '<option value=""><?php echo $text_select; ?></option>';

                        if (json['city'] != '') {
                            for (i = 0; i < json['city'].length; i++) {
                                html += '<option value="' + json['city'][i]['name'] + '"';

                                //if (json['city'][i]['name'] == '<?php //echo $city; ?>//') {
                                //    html += ' selected="selected"';
                                //}

                                html += '>' + json['city'][i]['name'] + '</option>';
                            }
                        } else {
                            html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                        }

                        one_order_city_select.html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            });






            $('input[name=\'shipping_method\']').on('change',function () {
                let shipping_container = $(this).closest('.block_with_shipping');
                if (shipping_container.find('.checkbox.delivery-post input').is(':checked')) {
                    shipping_container.find(".delivery-new").addClass('active');
                } else {
                    shipping_container.find(".delivery-new").removeClass('active');
                }
            });


            $(document).on('click','.custom_save_order',function (e) {
               e.preventDefault();
               let custom_save_order_container = $(this).parent();
               let order_id = $(this).closest('.order_info_form').find('.order_info_form_order_id').val();
               let data1 = $(this).closest('.order_info_form').serialize();
               let data2 = $(this).closest('.one_order_info').find('.total_block_form').serialize();
               let data = data1 +'&'+ data2;
               console.log(data1);
               console.log(data2);
               console.log(data);

                var url = '<?php echo $catalog; ?>index.php?route=api/order/edit_custom&token=' + token + '&store_id=0&order_id=' + order_id;
               $.ajax({
                  'url': url,
                  'data':data,
                  'type':'POST',
                  'dataType':'json',
                  'success':function (json) {
                      custom_save_order_container.find('.save_order_success').show();
                      setTimeout(function () {
                          custom_save_order_container.find('.save_order_success').hide();
                      },2000);
                  },
               });

            });

        });
    </script>


<style>
    .save_order_success{
        display: none;
        color: green;
        text-align: center;
        font-size: 21px;
    }

    .container-1300{
        max-width: 100%;
    }


</style>
    </div>

<?php echo $footer; ?>