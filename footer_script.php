<script src="js/jquery.min.js"></script>        
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
<script src="js/jquery.easing.1.3.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.sticky.js"></script>
<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="js/jquery.stellar.min.js" type="text/javascript"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js" type="text/javascript"></script>
<script src="js/wow.min.js" type="text/javascript"></script> 
<script src="js/owl.carousel.min.js" type="text/javascript"></script>
<script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="js/jquery.mb.YTPlayer.min.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script src="js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
<script src="js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
<script src="js/revolution-custom.js" type="text/javascript"></script>
<!-- Client Sldier Script Start -->
<script src="js/jquery.client.js" type="text/javascript"></script>
<script type="text/javascript">
    $(window).load(function () {
        $("#clientslider").flexisel({
            visibleItems: 5,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });
    });
</script>
<!-- Client Slider Script End -->
<script type="text/javascript">
    $(function () {
        $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                });
    });
</script>