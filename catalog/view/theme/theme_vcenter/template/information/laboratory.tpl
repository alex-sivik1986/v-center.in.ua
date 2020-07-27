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

 <section id="delivery" class="container-1300">
 <section id="text-page" class="container-1300 lab-page">
 <div class="anim-top start-anim">
                        <center>
                          <h1><?php echo $heading_title; ?></h1>
                        </center>
                    </div>
					<div class="labor">
 <?php echo $description; ?>
                    </div>  
 
     <div class="container-920 docum-block m-top-50 fadeEl">
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
   <?php echo $description2; ?>
 
 
 
<?php echo $content_bottom; ?>


 <!-- modal -->
       <div class="modal fade vid-mod" id="vid-1" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                 <iframe  width="100%" height="300px" src="https://www.youtube.com/embed/H9WFPRAktfA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    

                </div>
            </div>
        </div><!-- END  modal -->
		 <!-- modal -->
       <div class="modal fade vid-mod" id="vid-2" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                 <iframe width="100%" height="300px" src="https://www.youtube.com/embed/TThpDA0_e4Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
               

                </div>
            </div>
        </div><!-- END  modal -->
		 <!-- modal -->
       <div class="modal fade vid-mod" id="vid-3" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                 <iframe width="100%" height="300px" src="https://www.youtube.com/embed/cbgdkEk32U4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                   

                </div>
            </div>
        </div><!-- END  modal -->
               </section>
			   </section>


<?php echo $footer; ?>