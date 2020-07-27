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


<section id="delivery" class="container-1300"> <div id="text-page">
                    <div class="anim-top start-anim tit-page">
                        <center>
                            <h1><?php echo $heading_title; ?></h1>
                        </center>
                    </div>
                    <div class="delivery_top flex">
					<?php echo $column_left; ?>
					<?php if(!empty($column_right)) { ?>
                        <div class="txt"> 
                            <?php echo $description; ?>
                        </div>
						  <div class="r-block fadeEl start-anim ">
						  <?php echo $column_right; ?>
						  </div>
					<?php } else { ?>
					<?php echo $description; ?>
					<?php } ?>
                        
                    </div>
					<?php $description2 = trim($description2);
					if(!empty($description2) && strlen($description2) > 12 ) { ?>
                     <div class="delivery_bottom flex fadeEl ">
                        <?php echo $description2; ?>
                       </div>
					   <?php } ?>
					   <?php if ($information_id == 4) { ?>
					   <div class="container-920 docum-block">
                        <div class="row">
                            <div class="item">
                                <a class="image-popup-no-margins prod-zoom" href="/image/certificate ISO 9001 2015.jpg">
                                    <img src="/image/zoom.png" class="zoomin" alt=""/>
                                    <img class="img-responsive" src="/image/certificate ISO 9001 2015.jpg" alt="">
                                </a>
                                <div class="txt">
                                	
                                </div>
                            </div>
                          
                            <div class="item">
                                <a class="image-popup-no-margins prod-zoom" href="/image/sertifikat ISO 14001_2015.jpg">
                                    <img src="/image/zoom.png" class="zoomin" alt=""/>
                                    <img class="img-responsive" src="/image/sertifikat ISO 14001_2015.jpg" alt="">
                                </a>
                                <div class="txt">
                                	
                                </div>
                            </div>
                            <div class="item">
                                <a class="image-popup-no-margins prod-zoom" href="/image/sertifikat ISO 9001 2015 ukr.jpg">
                                    <img src="/image/zoom.png" class="zoomin" alt=""/>
                                    <img class="img-responsive" src="/image/sertifikat ISO 9001 2015 ukr.jpg" alt="">
                                </a>
                                <div class="txt">
                                	
                                </div>
                            </div>
                            <div class="item">
                                <a class="image-popup-no-margins prod-zoom" href="/image/sertifikat(laborat).jpg">
                                    <img src="/image/zoom.png" class="zoomin" alt=""/>
                                    <img class="img-responsive" src="/image/sertifikat(laborat).jpg" alt="">
                                </a>
                                <div class="txt">
                                	
                                </div>
                            </div>
                        </div>
                    </div>
					   <?php } ?>
					<?php if(!empty($chart_name) && !empty($chart_headings) && !empty($size_data)) { ?>
					<div  class="table">
					<?php if(!empty($chart_name)) { ?>
                        <div class="header">
                            <h2 class="anim-top animation"><?=$chart_name?></h2>
                        </div>
					<?php } ?>
					
                        <div class="table-responsive">
                        <table>
						<?php if(!empty($chart_headings)) { ?>
                            <thead>
                                <tr style="height:85px">
								<?php foreach($chart_headings as $title_th) { ?>
                                    <th><?=$title_th?></th>
									  <?php } ?>  
                                </tr>
                            </thead>
                    <?php } ?>
					
                            <tbody>
							<?php $i=0; $m=2;	foreach($size_data as $val) { 
							 if($i%7==0) { $m=2;  ?>
                                <tr>     
                             <?php } else { ++$m; } 
							     if(!empty($val)) {
							     if(empty(next($size_data))) { ?>
									  <td colspan="2" class="bg-white align-center"><?=$val?></td>
							 <?php  } else { ?>
                                    <td class="bg-white"><?=$val?></td>
								 <?php } }   if($m%8==0){ ?>
                                </tr>     
                             <?php } ?>
							 <? ++$i; } ?>
                    
                            </tbody>
                        </table>
                        </div>
                    </div>
					
					<?php } ?>
                    <?php echo $content_bottom; ?>
					</div>
               </section>


<?php echo $footer; ?>