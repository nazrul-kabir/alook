$(window).resize(function () {
    $(".navbar-collapse").css({maxHeight: $(window).height() - $(".navbar-header").height() + "px"});
});
/** STICKY HEADER **/   
$(document).ready(function () {
    $(window).load(function () {
        $(".sticky").sticky({topSpacing: 0});
    });
});


/** WOW PLUGIN **/   
$(document).ready(function () {
    var wow = new WOW({
        boxClass: 'wow',
        animateClass: 'animated',
        offset: 100,
        mobile: false
    });
    wow.init();
});

/** PARALLAX **/
$(document).ready(function () {
    $(window).stellar({
        horizontalScrolling: false,
        responsive: true
    });
});

/** LATEST PRODUCT **/
$(document).ready(function () {
    $("#product-carousel").owlCarousel({
        items: 5,
        itemsCustom: false,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [980, 3],
        itemsTablet: [768, 3],
        itemsTabletSmall: false,
        itemsMobile: [479, 1],
        singleItem: false,
        startDragging: true,
        autoPlay: 6000
    });

});

/** NEWS **/
$(document).ready(function () {
    $("#news-carousel").owlCarousel({
        items: 4,
        itemsCustom: false,
        itemsDesktop: [1199, 2],
        itemsDesktopSmall: [980, 2],
        itemsTablet: [768, 2],
        itemsTabletSmall: false,
        itemsMobile: [479, 1],
        singleItem: false,
        startDragging: true,
        autoPlay: 4000
    });

});

/** TESTIMONIAL **/
$(document).ready(function () {
    $("#testi-carousel").owlCarousel({
        items: 1,
        itemsCustom: false,
        itemsDesktop: [1199, 1],
        itemsDesktopSmall: [980, 1],
        itemsTablet: [768, 1],
        itemsTabletSmall: false,
        itemsMobile: [479, 1],
        singleItem: false,
        startDragging: true,
        autoPlay: 4000
    });

});

/** FEATURED WORK **/
$(document).ready(function () {
    $("#featured-work").owlCarousel({
        autoPlay: 5000,
        navigation: true,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        pagination: false,
        items: 4,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3],
        stopOnHover: true

    });

});

/** COUNTER UP **/
jQuery(document).ready(function ($) {
    $('.counter').counterUp({
        delay: 10,
        time: 800
    });
});

/** MAGNIFIC POPUP**/
$(document).ready(function () {
    $('.show-image').magnificPopup({type: 'image'});
});


/** FLEX SLIDER **/
$(document).ready(function () {
    $('.main-flex-slider,.testi-slide').flexslider({
        slideshowSpeed: 5000,
        directionNav: false,
        animation: "fade"
    });
});


/** TOOLTIP AND POPOVER **/
$(document).ready(function () {
    $("[data-toggle=popover]").popover();

    $("[data-toggle=tooltip]").tooltip();
});


/** YTPlayer **/
$(document).ready(function () {
    jQuery(function () {
        jQuery(".player").mb_YTPlayer();
    });
});


/** TRANSPARENT HEADER **/
$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.transparent-header').css("background", "#252525");
        } else {
            $('.transparent-header').css("background", "transparent");
        }
    });
});

/** SEARCH **/
(function () {

    $('.top-search').on('click', function () {
        $('.search').fadeIn(500, function () {
            $(this).toggleClass('search-toggle');
        });
    });

    $('.search-close').on('click', function () {
        $('.search').fadeOut(500, function () {
            $(this).removeClass('search-toggle');
        });
    });

}());



/** ACCORDION **/
$('.panel-ico a[data-toggle="collapse"]').on('click', function () {
    if ($(this).closest('.panel-heading').hasClass('active')) {
        $(this).closest('.panel-heading').removeClass('active');
    } else {
        $('.panel-heading a[data-toggle="collapse"]').closest('.panel-heading').removeClass('active');
        $(this).closest('.panel-heading').addClass('active');
    }
});

 