//load
$(window).on('load', function () {
	$preloader = $('#loader'),
	  $loader = $preloader.find('#cube-loader');
	$loader.fadeOut();
	$preloader.delay(350).fadeOut('slow');
	$('body').removeClass('js-loading');

	
	$('.start-anim').addClass('anim');
});


$(document).scroll(function () {
	var WinTop = $(window).scrollTop();
	var docHeight = $(window).height();

	$('.fadeEl').each(function () {
		var topIn = $(this).offset().top -docHeight * 0.80 ; 
		if (WinTop > topIn) {
			$(this).addClass('anim');
		}
	});
	
	$('.animation').each(function () {
		var topIn = $(this).offset().top -docHeight * 0.80 ; 
		if (WinTop > topIn) {
			$(this).addClass('start-animation');
		}
	});
	
});


						
//modal-block

$('.modal-block').on('click', function(){
	var	modid =  $(this).data("id");
	function func() {
  $(".modal[data-id='#"+modid+"']").toggleClass('open');
  $(".modal-ov").show("slow");
  $("body").addClass("open-hidden");
  }
	setTimeout(func, 300);
});

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


$(document).on("ready", function () {
	$("#form-language .btn-link").click(function () {
		$("#form-language .btn-link").removeClass('active');
		$(this).addClass('active');
	});
});


$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('.scrollToTop').fadeIn();
        } else {
            $('.scrollToTop').fadeOut();
        }
    });
          
       
    $('.scrollToTop').click(function() {
        $('html, body').animate({scrollTop : 0}, 500);
        return false;
    });
});


/*MENU*/
$(document).on("ready", function () {
    $("#menu-show").click(function () {
        $("#menu-panel").addClass("menu-open");
    });
	
});
$(document).on("ready", function () {
	$("#menu-hide").click(function () {
		$("#menu-panel").removeClass("menu-open");
	});
});
$(document).on("ready", function () {
	$("#menu-panel .hide-menu").click(function () {
		$("#menu-panel").removeClass("menu-open");
	});
});


/*$(document).on("ready", function () {
	$(".product .like").click(function () {
		$(this).toggleClass('active');
	});
});
*/
//Минус плюс
$(document).ready(function() {
    $('.minus').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });
    $('.plus').click(function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });
});

$(document).on("ready", function () {
	$(".delivery-post").click(function () {
		$(".delivery-new").addClass('active');
	});
	$(".delivery-pickup").click(function () {
		$(".delivery-new").removeClass('active');
	});
});



$(document).on("ready", function () {
	$(".history-header").click(function () {
		$(this).toggleClass('active');
		$(".personal-history .item").removeClass("active");
		$(this).parent(".personal-history .item").addClass("active");
		$(".personal-history .item.active").children(".history-body").slideToggle('normal');
	});
});

$(document).on("ready", function () {
	$("#admin-page .admin_table-body .table-header").click(function () {
		$(this).toggleClass('active');
		$("#admin-page .admin_table-body .item").removeClass("active");
		$(this).parent("#admin-page .admin_table-body .item").addClass("active");
		$("#admin-page .admin_table-body .item.active").children(".table-body").slideToggle('normal');
	});
});


$(document).ready(function(){
    $(".anchor").click(function () {
        event.preventDefault();
        var id  = $(this).attr('href'),
            top = $(id).offset().top;
        $('body,html').animate({scrollTop: top}, 1500);
    });
});



$(document).on("ready", function () {
	$(".admin-item > .item").click(function () {
		$(".admin-item").removeClass("active");
		$(this).parent('.admin-item').addClass('active');
	});
	
	
	
});

$(document).on("ready", function () {
	$(".swiper-thumbnails button").click(function () {
		
		$(".swiper-thumbnails button input").removeAttr('checked');
		
		$(this).find('input').prop('checked', true);
	});
	
	
	$("#product_one-specification .chose span").click(function () {
		$("#product_one-specification .chose span").removeClass('active');
		;
		$("#product_one-specification .chose span input").removeAttr('checked');
		$(this).addClass('active');
		$(this).find('input').prop('checked', true);
	});
});



	   	window.addEventListener("orientationchange", function() {
			nSwiper.update();
			aSwiper.update();
		}, false);
	




