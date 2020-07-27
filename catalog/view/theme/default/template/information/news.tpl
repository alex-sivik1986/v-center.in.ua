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
 <section id="text-page" class="container-1300"> 
                    <div class="anim-top start-anim">
                        <center>
                            <div class="date"><span class="circle"></span><?php echo $posted; ?> </div>
                            <h1><?php echo $heading_title; ?></h1>
                        </center>
                    </div>
					<?php if ($thumb) { ?>
                    <div class="fadeEl img-100">
				    <center>
                        <img src="<?php echo $thumb; ?>" alt=""/>
					 </center>
					</div>
					<?php } ?>
					
					<div class="container-920">
                       <?php echo $description; ?>
                    </div>
					
					<?php if(!empty($chart_name) || !empty($chart_headings) || !empty($size_data)) { ?>
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
					<div style="margin-top:25px" class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Поделиться</a></div>
					<?php echo $content_bottom; ?>
	<?php echo $column_right; ?>
</section>					
					
						



<!--<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
	<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
			<div class="row">
				<?php if ($thumb) { ?>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
					</div>
				</div>
				<?php } ?>
				<div class="<?php echo $thumb ? 'col-sm-8' : 'col-sm-12'; ?>">
					<h1><?php echo $heading_title; ?></h1>
					<div class="tab-content">
						<div class="description">
							<?php echo $description; ?>
						</div>
						<div class="col-sm-4"><i class="fa fa-clock-o"></i>&nbsp;<?php echo $posted; ?></div>
						<div class="col-sm-4"><i class="fa fa-eye"></i>&nbsp;<?php echo $viewed; ?></div>
						<?php if($news_share) { ?>
						<div class="col-sm-4">
							<div class="addthis">
							
								<div class="addthis_toolbox addthis_default_style ">
									<a class="addthis_button_email"></a>
									<a class="addthis_button_print"></a>
									<a class="addthis_button_preferred_1"></a>
									<a class="addthis_button_preferred_2"></a>
									<a class="addthis_button_preferred_3"></a>
									<a class="addthis_button_preferred_4"></a>
									<a class="addthis_button_compact"></a>
									<a class="addthis_counter addthis_bubble_style"></a>
								</div>
								<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
							</div>
						</div>
						<?php } ?>
					</div>
				</div>
				<div class="col-sm-12">
					
					<div class="buttons">
						<div class="pull-left">
							<a class="btn btn-primary" href="<?php echo $news_list; ?>"><?php echo $button_news; ?></a>
						</div>
						<div class="pull-right">
							<a class="btn btn-primary" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a>
						</div>
					</div>
				</div>
			</div>
		
	<script type="text/javascript">
		$(document).ready(function () {
			$('.thumbnail').magnificPopup({
				type: 'image',
				delegate: 'a',
			});
		});
	</script>
</div>-->
<?php echo $footer; ?>