<?php if(empty($description2)) { ?>
<?php if($heading_title) { ?>
    <h2><?php echo $heading_title; ?></h2>
<?php } ?> 
<center> <?php echo $html; ?><center>
 <?php } else { ?>
<section class="seo-info fadeEl">
                    <div class="container flex">
                        <div class="img w-50"><img src="img/nashe_proizvodstvo.jpg" alt="" /></div>
                        <div class="txt w-50">
                           
                           <?php echo $html; ?>
                          <!--  <div class="flex info">
                                <div class="item">
                                    <img src="img/img6.png" alt="" />
                                    <p><?=$standart?>
                                        <br/>ISO 9001:2015</p>
                                </div>
                                <div class="item">
                                    <img src="img/img7.png" alt="" />
                                    <p><?=$ekology_menegment?>
                                        <br/>ISO 14001:2015</p>
                                </div>
                            </div>-->
                            <div class="more-block">
                                <div class="more"><?=$details?><span><svg width="9px" height="5px"><path fill-rule="evenodd"  fill="rgb(48, 44, 37)" d="M9.007,0.521 L5.044,4.369 L5.157,4.478 L4.613,5.007 L4.500,4.897 L4.387,5.007 L3.843,4.478 L3.955,4.369 L-0.008,0.521 L0.537,-0.008 L4.500,3.840 L8.463,-0.008 L9.007,0.521 Z"/></svg></span></div>
                            </div>
                        </div>
                        <div class="txt-hide">
                        	 <?php echo $description2; ?>
                        </div>
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
                    </div>
                </section>
 <?php } ?>