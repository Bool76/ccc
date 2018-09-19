$(document).ready(function(){
	$('body.mobile #sls_mobile_mega_menu_pop').prepend('<div class="close topExpandMenu"></div>');

	$('body.mobile #smg_page_template_header #smg_page_template_topNav #mobile_menu').on('click', function(){
					if( $('body.mobile #sls_mobile_mega_menu_pop').hasClass('open') )
						{
							$('body.mobile #sls_mobile_mega_menu_pop').animate({left: "-345px"}, 300).removeClass("open");
							$('body.mobile #smg_page_template_container').animate({left: "0px"}, 300);
						}

					else
						{
							$('body.mobile #sls_mobile_mega_menu_pop').animate({left: "0px"}, 300).addClass("open");
							$('body.mobile #smg_page_template_container').animate({left: "310px"}, 300);
						}
		});

	$('body.mobile #sls_mobile_mega_menu_pop div.close').on('click', function(){
				$('body.mobile #sls_mobile_mega_menu_pop').animate({left: "-345px"}, 300).removeClass("open");
				$('body.mobile #smg_page_template_container').animate({left: "0px"}, 300);
		});


})
