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
                    <div class="menu-admin">
                        <div class="btn-block"><a href="#" class="btn">Создать заказ</a></div>
                        <ul style="display:flex">
                            <li><a href="#" class="a1"><span>Все заказы</span></a></li>
                            <li><a href="#" class="active a2"><span>Новые заказы</span></a></li>
                            <li><a href="#" class="a3"><span>Заказы в обработке</span></a></li>
                            <li><a href="#" class="a4"><span>Закрытые заказы</span></a></li>
                            <li><a href="#" class="a5"><span>Отмененные заказы</span></a></li>
                        </ul>
                    </div>
                    <div class="fadeEl fadeEl-right start-anim admin-list">
                        <div class="admin_header">
                            <div class="row">
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
                                    <div class="item">
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
                                                <div class="tit red-txt"><span class="m-tit">Сумма, грн:</span>55 350</div>
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
                                            <div class="table-responsive">
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

                                                                <?php if($order_product['option']) {
                                                                    foreach($order_product['option'] as $option) { 	?>				 <?php if ($option['type'] == 'select' || $option['type'] == 'radio' || $option['type'] == 'image') { ?>
                                                                        <input type="hidden" name="product[<?php echo $product_row; ?>][option][<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['product_option_value_id']; ?>" />
                                                                    <?php } ?>
                                                                        <td><?=$option['value']?></td>
                                                                    <?php } } else {
                                                                    ?>
                                                                    <td></td>
                                                                <?php } ?>
                                                                <td><?=$order_product['name']?></td>
                                                                <td class="text-center">
                                                                    <input name="product[<?php echo $product_row; ?>][price_m]" class="form-control" placeholder="319" type="text">
                                                                </td>
                                                                <td class="text-center column">

                                                                    <input name="product[<?php echo $product_row; ?>][quantity]" value="<?=$order_product['quantity']?>" class="form-control"  type="text">
                                                                </td>
                                                                <td><input class="form-control no-border" placeholder="27 743" type="text"></td>
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
                                                            <input class="form-control" placeholder="Введите артикул" type="text">
                                                        </div>
                                                        <div class="form-group small-input">
                                                            <label>Грн/м2</label>
                                                            <input class="form-control" type="text">
                                                        </div>
                                                        <div class="form-group small-input">
                                                            <label>м2</label>
                                                            <input class="form-control" type="text">
                                                        </div>
                                                        <div class="bnt-block">
                                                            <button class="btn">Добавить</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div><!-- add-order -->

                                            <div class="total-block">
                                                <form>
                                                    <div class="row">
                                                        <div class="form-group">
                                                            <label>Способ оплаты</label>
                                                            <div class="select">
                                                                <select class="form-control form-select">
                                                                    <option>LiqPay</option>
                                                                    <option>LiqPay</option>
                                                                    <option>LiqPay</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Сатус оплаты</label>
                                                            <div class="select">
                                                                <select class="form-control form-select">
                                                                    <option>Оплачен</option>
                                                                    <option>Не оплачен</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Сатус доставки</label>
                                                            <div class="select">
                                                                <select class="form-control form-select">
                                                                    <option>Отправлен</option>
                                                                    <option>Ожидает оплаты</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="total">Итого: <span>35 280 грн</span></div>
                                                    </div>
                                                </form>
                                            </div>

                                            <div class="info">
                                                <form>
                                                    <div class="form_item">
                                                        <div class="tit">
                                                            <div class="img"><img src="/img/ico/resume.svg" alt=""></div>
                                                            <h2>Получатель</h2>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваше имя</label>
                                                            <input class="form-control" placeholder="Введите Ваше имя" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваш телефон</label>
                                                            <input class="form-control" placeholder="+380 __ ___ __ __" type="tel">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>E-mail</label>
                                                            <input class="form-control" placeholder="username@gmail.com" type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Ваш комментарий</label>
                                                            <textarea class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form_item">
                                                        <div class="tit">
                                                            <div class="img"><img src="/img/ico/tracking.svg" alt=""></div>
                                                            <h2>Доставка</h2>
                                                        </div>
                                                        <div class="form-flex checkbox-flex">
                                                            <div class="checkbox delivery-pickup">
                                                                <input type="radio" class="custom-control-input" id="radio-3" name="r3">
                                                                <label for="radio-3">
                                                                    <span class="check-block">
                                                                                                <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd" stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)" d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"></path></svg>
                                                                             <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd" fill="rgb(59, 53, 53)" d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"></path></svg>
                                                                                             </span> Самовывоз
                                                                </label>
                                                            </div>
                                                            <div class="checkbox delivery-post">
                                                                <input type="radio" class="custom-control-input" id="radio-4" name="r4">
                                                                <label for="radio-4">
                                                                    <span class="check-block">
                                                                                                <svg width="19px" height="19px" class="bg"><path fill-rule="evenodd" stroke="rgb(132, 117, 103)" stroke-width="2px" stroke-dasharray="0, 6" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0.851" fill="rgb(255, 255, 255)" d="M9.000,0.999 C13.418,0.999 17.000,4.581 17.000,8.999 C17.000,13.418 13.418,16.999 9.000,16.999 C4.582,16.999 1.000,13.418 1.000,8.999 C1.000,4.581 4.582,0.999 9.000,0.999 Z"></path></svg>
                                                                             <svg width="8px" height="8px" class="circle"><path fill-rule="evenodd" fill="rgb(59, 53, 53)" d="M4.000,-0.000 C6.209,-0.000 8.000,1.791 8.000,4.000 C8.000,6.209 6.209,8.000 4.000,8.000 C1.791,8.000 -0.000,6.209 -0.000,4.000 C-0.000,1.791 1.791,-0.000 4.000,-0.000 Z"></path></svg>
                                                                                             </span> Новая почта
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="delivery-new">
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
                                                        </div>
                                                        <div class="bnt-block">
                                                            <button class="btn">Сохранить</button>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- item -->
                                <?php } } ?>


                        </div></div></div></div>
        </section>

























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
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
            </div>
            <div class="panel-body">
                <div class="well">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
                                <input type="text" name="filter_order_id" value="<?php echo $filter_order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-customer"><?php echo $entry_customer; ?></label>
                                <input type="text" name="filter_customer" value="<?php echo $filter_customer; ?>" placeholder="<?php echo $entry_customer; ?>" id="input-customer" class="form-control" />
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
                                <label class="control-label" for="input-total"><?php echo $entry_total; ?></label>
                                <input type="text" name="filter_total" value="<?php echo $filter_total; ?>" placeholder="<?php echo $entry_total; ?>" id="input-total" class="form-control" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-added"><?php echo $entry_date_added; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $entry_date_added; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
                                    <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-date-modified"><?php echo $entry_date_modified; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="filter_date_modified" value="<?php echo $filter_date_modified; ?>" placeholder="<?php echo $entry_date_modified; ?>" data-date-format="YYYY-MM-DD" id="input-date-modified" class="form-control" />
                                    <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
                            </div>
                            <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
                        </div>
                    </div>
                </div>
                <form method="post" action="" enctype="multipart/form-data" id="form-order">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                                <td class="text-right"><?php if ($sort == 'o.order_id') { ?>
                                        <a href="<?php echo $sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_order_id; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_order; ?>"><?php echo $column_order_id; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'customer') { ?>
                                        <a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'order_status') { ?>
                                        <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                                    <?php } ?></td>
                                <td class="text-right"><?php if ($sort == 'o.total') { ?>
                                        <a href="<?php echo $sort_total; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_total; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_total; ?>"><?php echo $column_total; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'o.date_added') { ?>
                                        <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'o.date_modified') { ?>
                                        <a href="<?php echo $sort_date_modified; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_modified; ?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $sort_date_modified; ?>"><?php echo $column_date_modified; ?></a>
                                    <?php } ?></td>
                                <td class="text-right"><?php echo $column_action; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($orders) { ?>
                                <?php foreach ($orders as $order) { ?>
                                    <tr>
                                        <td class="text-center"><?php if (in_array($order['order_id'], $selected)) { ?>
                                                <input type="checkbox" name="selected[]" value="<?php echo $order['order_id']; ?>" checked="checked" />
                                            <?php } else { ?>
                                                <input type="checkbox" name="selected[]" value="<?php echo $order['order_id']; ?>" />
                                            <?php } ?>
                                            <input type="hidden" name="shipping_code[]" value="<?php echo $order['shipping_code']; ?>" /></td>
                                        <td class="text-right"><?php echo $order['order_id']; ?></td>
                                        <td class="text-left"><?php echo $order['customer']; ?></td>
                                        <td class="text-left"><?php echo $order['order_status']; ?></td>
                                        <td class="text-right"><?php echo $order['total']; ?></td>
                                        <td class="text-left"><?php echo $order['date_added']; ?></td>
                                        <td class="text-left"><?php echo $order['date_modified']; ?></td>
                                        <td class="text-right"><a href="<?php echo $order['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a> <a href="<?php echo $order['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="row">
                    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript"><!--
        $(document).delegate('.column input', 'change', function() {
            var node = this;
            var node_input = $(this);

            $.ajax({
                url: '/index.php?route=api/cart/add&token=' + token + '&store_id=0',
                type: 'post',
                data: node_input.closest('.table-body').find('input[name^=\'product\'][type=\'text\'], input[name^=\'product\'][type=\'hidden\'], input[name^=\'product\'][type=\'radio\']:checked, input[name^=\'product\'][type=\'checkbox\']:checked, select[name^=\'product\'], textarea[name^=\'product\']'),
                dataType: 'json',
                crossDomain: true,
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
                node_input.closest('.item').find('.button-refresh').trigger('click');
            });
        });


        /*NEWNEWNEW*/
        $(document).on('click','.delete_product_from_cart',function (e) {
            e.preventDefault();
            let count_order_products = $(this).closest('.table-body').attr('data-attr-count_products');
            if(count_order_products > 1){
                var $input = $(this).closest('.one_product_row').find('.product_quantity_input');
                $input.val(0);
                $input.change();
            } else {
                alert('Заказ не может быть пустой');
            }

            return false;
        });
        /*NEWNEWNEW*/


        /*NEWNEWNEW*/
        // Add all products to the cart using the api
        $(document).on('click', '.button-refresh', function() {
            let button_refresh = $(this);
            $.ajax({
                url: '<?php echo $catalog; ?>index.php?route=api/cart/products&token=' + token + '&store_id=0',
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
                        html = '<div class="table-body" data-attr-count_products="'+json['products'].length+'">';
                        html += '<div class="table-responsive">                                                <table><tr>';
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
                            html +=  '  <td class="text-center"><a href="#" class="delete delete_product_from_cart"><img src="/img/ico/delete-button.png" alt="" /></a></td>';

                            html += ' <td class="text-center">' + product['name'] + ' ' + (!product['stock'] ? '<span class="text-danger">***</span>' : '') + '<br />';
                            html += '  <input type="hidden" name="product[' + i + '][product_id]" value="' + product['product_id'] + '" />';
                            html += '  <input type="hidden" name="product[' + i + '][is_present]" value="' + product['is_present'] + '" />';

                            if (product['option']) {
                                for (j = 0; j < product['option'].length; j++) {
                                    option = product['option'][j];
                                    html += '  - <small>' + option['name'] + ': ' + option['value'] + '</small><br />';
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

                            html +=  '<td class="text-nowrap t-3">'+ product['price']+'</td>';
                            html += '<td class="t-4">';
                            html += '   <div class="kol">';
                            html += '       <span class="minus">-</span>';
                            html += '       <input class="product_quantity_input" name="product['+i+'][quantity]" type="text" value="'+product['quantity']+'">';
                            html += '       <span class="plus">+</span>';
                            html += '   </div>';
                            html += '</td>';
                            html +=  '<td class="text-nowrap t-5">'+ product['total']+'</td>';
                            html += '<td class="t-6">';
                            html += '   <div class="btn-fl">';
                            html += '       <a href="#" class="btn-sm delete_product_from_cart"><img src="/image/admin-img/s-close.png" alt=""/></a>';
                            html += '       <a href="#"  data-attr-product_id="'+product['product_id']+'" class="btn-sm product_is_present"><img src="/image/admin-img/s-gift.png" alt=""/></a>';
                            html += '   </div>';
                            html += '</td>';
                            html += '</tr>';
                        }
                    }


                    if (!json['products'].length && !json['vouchers'].length) {
                        html += '<tr>';
                        html += '  <td colspan="6" class="text-center"><?php echo $text_no_results; ?></td>';
                        html += '</tr>';
                    }

                    button_refresh.closest('.admin-info').find('.table_products').html(html);
                    // $('.table_products').append(html);



                    html = '';
                    if (json['totals'].length) {
                        for (i in json['totals']) {
                            total = json['totals'][i];

                            let dop_total_class = '';
                            if(total['title'] == 'Итого'){
                                dop_total_class = 'tot';
                            }

                            html += '<p>';
                            html += '  <span class="tit">' + total['title'] + ':</span>';
                            html += '  <span class="value text-nowrap '+dop_total_class+'">' + total['text'] + '</span>';
                            html += '</p>';
                        }
                    }

                    if (!json['totals'].length && !json['products'].length && !json['vouchers'].length) {
                        html += '<p  class="text-center">';
                        html += '  <span class="text-center"><?php echo $text_no_results; ?></span>';
                        html += '</p>';
                    }

                    button_refresh.closest('.admin-info').find('.total-block').html(html);

                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }).done(function() {
                button_refresh.closest('.item').find('.button-save').trigger('click');
            });
        });
        /*NEWNEWNEW*/



        var token = '';

        // Login to the API
        $.ajax({
            url: 'https://v-center.in.ua/index.php?route=api/login',
            type: 'post',
            data: 'key=wE99BLEFi2crPKxRQmpq3AivGKkPmUtWPzgpDkUbBbwxfzMisVA5xXfZQnyr2sUy10FAHMXBj700ISwjE8WtTxAMNhG7cgYgDMmd0FfrQf4svuR1T1quwLAsInr5EweAMjqwfudlUnm5gR5HBZWQHbLne6hNvbz7oqgkugW0IVj9mv8yOmOut8zfQ3lQgqyb9XFU99oBH1g9VCiEIcN6SVraBmgoIJPajsE4GGyM7GhEigBZMLFl54ltXJ9fw23P',
            dataType: 'json',
            crossDomain: true,
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    if (json['error']['key']) {
                        $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['key'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }

                    if (json['error']['ip']) {
                        $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['ip'] + ' <button type="button" id="button-ip-add" data-loading-text="Загрузка..." class="btn btn-danger btn-xs pull-right"><i class="fa fa-plus"></i> Добавить IP-адрес</button></div>');
                    }
                }

                if (json['token']) {
                    token = json['token'];

                    $('select[name=\'currency\']').trigger('change');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
        $('.table-body').delegate('.delete', 'click', function(e) {
            var node = this;
            e.preventDefault();
            $.ajax({
                url: 'https://v-center.in.ua/index.php?route=api/cart/remove&token=' + token + '&store_id=0',
                type: 'post',
                data: 'key=' + encodeURIComponent(this.value),
                dataType: 'json',
                crossDomain: true,
                beforeSend: function() {
                    $(node).button('loading');
                },
                complete: function() {
                    $(node).button('reset');
                },
                success: function(json) {
                    $('.alert, .text-danger').remove();

                    // Check for errors
                    if (json['error']) {
                        $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    } else {
                        // Refresh products, vouchers and totals
                        $('#button-refresh').trigger('click');
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        });
        /*--------------------------------------------------------*/




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
        //--></script></div>
<?php echo $footer; ?>