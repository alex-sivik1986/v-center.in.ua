
            <div class="modal-ov" style="display: none;"></div>
            <div class="modal-quick modal-content" style="transform: translateY(0px);">
                <span class="close"><svg width="12px" height="12px"><path fill-rule="evenodd" fill="rgb(46, 44, 42)" d="M12.002,10.284 L10.284,12.002 L6.000,7.718 L1.716,12.002 L-0.002,10.284 L4.282,6.000 L-0.002,1.716 L1.716,-0.002 L6.000,4.282 L10.284,-0.002 L12.002,1.716 L7.718,6.000 L12.002,10.284 Z"></path></svg></span>
                <div class="modal-body">
                    <div class="modal-header">
                    	<h3><span><?=$buy?></span> <?=$product['name']?></h3>
                    </div>
                    <form id="form_buyoneclick" role="form" method="post">
                        <div class="form-group">
                            <label><?=$phone_input?></label>
                            <input class="form-control" name="phone" value="" placeholder="Телефон: +380 __ ___ __ __" type="tel">
							 <input type="hidden" name="prod_href" value="<?=$product['href']?>">
							 <input type="hidden" name="prod_name" value="<?=$product['name']?>">
                        </div>
						<div class="error"></div>
                        <button type="submit" id="buyone" class="btn btn-order success-btn"><?=$text_submitbuy?></button>
                    </form>
                </div>
            </div>
       <script>



$(".close").click(function () {
  
	$(".modal-content").addClass('modal');
	$(".modal-content.modal").css({'transform':'translateY(-100%)'});
	$(".modal-ov").hide("slow");
	$("#profit-calculator .sel-tree").removeClass('none');
	function func() {
		$(".modal").removeClass("open");
		$("body").removeClass("open-hidden");
		$(".modal-content").removeClass('modal');
		$(".modal-content").css({'transform':'translateY(0)'});
	}
	setTimeout(func, 300);
	
});



 var inputsTel = document.querySelectorAll('input[type="tel"]');
            Inputmask({
              "mask": "+38(999) 999-99-99",
              showMaskOnHover: false
            }).mask(inputsTel);
$(".modal-ov").click(function () {
	$(".modal-content").addClass('modal');
	$(".modal-content.modal").css({'transform':'translateY(-100%)'});
	$(".modal-ov").hide("slow");
	$("#profit-calculator .sel-tree").removeClass('none');
	function func() {
		$(".modal").removeClass("open");
		$("body").removeClass("open-hidden");
		$(".modal-content").removeClass('modal');
		$(".modal-content").css({'transform':'translateY(0)'});
	}
	setTimeout(func, 300);
	
});
 
	   </script>