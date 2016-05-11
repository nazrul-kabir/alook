(function ($) {
    $.fn.flexisel = function (options) {

        var defaults = $.extend({
            visibleItems: 4,
            animationSpeed: 200,
            autoPlay: false,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            setMaxWidthAndHeight: false,
            enableResponsiveBreakpoints: true,
            flipPage: false,
            clone: true,
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
        }, options);

        var object = $(this);
        var settings = $.extend(defaults, options);
        var itemsWidth;
        var canNavigate = true;
        var itemsVisible = settings.visibleItems;
        var totalItems = object.children().length;
        var responsivePoints = [];

        var methods = {
            init: function () {
                return this.each(function () {
                    methods.appendHTML();
                    methods.setEventHandlers();
                    methods.initializeItems();
                });
            },
            initializeItems: function () {

                var listParent = object.parent();
                var innerHeight = listParent.height();
                var childSet = object.children();
                methods.sortResponsiveObject(settings.responsiveBreakpoints);

                var innerWidth = listParent.width();
                itemsWidth = (innerWidth) / itemsVisible;
                childSet.width(itemsWidth);
                if (settings.clone) {
                    childSet.last().insertBefore(childSet.first());
                    childSet.last().insertBefore(childSet.first());
                    object.css({
                        'left': -itemsWidth
                    });
                }

                object.fadeIn();
                $(window).trigger("resize"); // needed to position arrows correctly

            },
            appendHTML: function () {
                object.addClass("nbs-flexisel-ul");
                object.wrap("<div class='nbs-flexisel-container'><div class='nbs-flexisel-inner'></div></div>");
                object.find("li").addClass("nbs-flexisel-item");

                var flexiselInner = object.parent();

                if (settings.setMaxWidthAndHeight) {
                    var baseWidth = $(".nbs-flexisel-item img").width();
                    var baseHeight = $(".nbs-flexisel-item img").height();
                    $(".nbs-flexisel-item img").css("max-width", baseWidth);
                    $(".nbs-flexisel-item img").css("max-height", baseHeight);
                }
                $("<div class='nbs-flexisel-nav-left'></div><div class='nbs-flexisel-nav-right'></div>").insertAfter(flexiselInner);
                if (settings.clone) {
                    var cloneContent = object.children().clone();
                    object.append(cloneContent);
                }
            },
            setEventHandlers: function () {

                var listParent = object.parent();
                var flexiselInner = listParent.parent();
                var childSet = object.children();
                var leftArrow = flexiselInner.find(".nbs-flexisel-nav-left");
                var rightArrow = flexiselInner.find(".nbs-flexisel-nav-right");

                $(window).on("resize", function (event) {
                    methods.setResponsiveEvents();
                    var innerWidth = $(listParent).width();
                    var innerHeight = $(listParent).height();
                    itemsWidth = (innerWidth) / itemsVisible;
                    childSet.width(itemsWidth);
                    if (settings.clone) {
                        object.css({
                            'left': -itemsWidth
                        });
                    } else {
                        object.css({
                            'left': 0
                        });
                    }

                    if (!settings.clone && totalItems <= itemsVisible) {
                        leftArrow.add(rightArrow).css('visibility', 'hidden');
                    } else {
                        leftArrow.add(rightArrow).css('visibility', 'visible');

                        var halfArrowHeight = (leftArrow.height()) / 2;
                        var arrowMargin = (innerHeight / 2) - halfArrowHeight;
                        leftArrow.css("top", arrowMargin + "px");
                        rightArrow.css("top", arrowMargin + "px");
                    }

                });
                $(leftArrow).on("click", function (event) {
                    methods.scrollLeft();
                });
                $(rightArrow).on("click", function (event) {
                    methods.scrollRight();
                });
                if (settings.pauseOnHover === true) {
                    $(".nbs-flexisel-item").on({
                        mouseenter: function () {
                            canNavigate = false;
                        },
                        mouseleave: function () {
                            canNavigate = true;
                        }
                    });
                }
                if (settings.autoPlay === true) {
                    setInterval(function () {
                        if (canNavigate === true)
                            methods.scrollRight();
                    }, settings.autoPlaySpeed);
                }

                object[0].addEventListener('touchstart', methods.touchHandler.handleTouchStart, false);
                object[0].addEventListener('touchmove', methods.touchHandler.handleTouchMove, false);

            },
            setResponsiveEvents: function () {
                var contentWidth = $('html').width();

                if (settings.enableResponsiveBreakpoints) {
                    var largestCustom = responsivePoints[responsivePoints.length - 1].changePoint;

                    for (var i in responsivePoints) {

                        if (contentWidth >= largestCustom) {
                            itemsVisible = settings.visibleItems;
                            break;
                        } else {
                            if (contentWidth < responsivePoints[i].changePoint) {
                                itemsVisible = responsivePoints[i].visibleItems;
                                break;
                            } else
                                continue;
                        }
                    }
                }
            },
            sortResponsiveObject: function (obj) {
                var responsiveObjects = [];
                for (var i in obj) {
                    responsiveObjects.push(obj[i]);
                }
                responsiveObjects.sort(function (a, b) {
                    return a.changePoint - b.changePoint;
                });
                responsivePoints = responsiveObjects;
            },
            scrollLeft: function () {
                if (object.position().left < 0) {
                    if (canNavigate === true) {
                        canNavigate = false;

                        var listParent = object.parent();
                        var innerWidth = listParent.width();

                        itemsWidth = (innerWidth) / itemsVisible;

                        var childSet = object.children();
                        var increment = (settings.flipPage) ? innerWidth : itemsWidth;

                        object.animate({
                            'left': "+=" + increment
                        }, {
                            queue: false,
                            duration: settings.animationSpeed,
                            easing: "linear",
                            complete: function () {
                                if (settings.clone) {
                                    childSet.last().insertBefore(childSet.first());
                                }
                                methods.adjustScroll();
                                canNavigate = true;
                            }
                        });
                    }
                }
            },
            scrollRight: function () {
                var listParent = object.parent();
                var innerWidth = listParent.width();
                itemsWidth = (innerWidth) / itemsVisible;
                var difObject = (itemsWidth - innerWidth);
                var objPosition = (object.position().left + ((totalItems - itemsVisible) * itemsWidth) - innerWidth);
                var increment = (settings.flipPage) ? innerWidth : itemsWidth;

                if ((difObject <= Math.ceil(objPosition)) && (!settings.clone)) {
                    if (canNavigate === true) {
                        canNavigate = false;

                        object.animate({
                            'left': "-=" + increment
                        }, {
                            queue: false,
                            duration: settings.animationSpeed,
                            easing: "linear",
                            complete: function () {
                                methods.adjustScroll();
                                canNavigate = true;
                            }
                        });
                    }
                } else if (settings.clone) {
                    if (canNavigate === true) {
                        canNavigate = false;
                        var childSet = object.children();
                        object.animate({
                            'left': "-=" + increment
                        }, {
                            queue: false,
                            duration: settings.animationSpeed,
                            easing: "linear",
                            complete: function () {
                                childSet.first().insertAfter(childSet.last());
                                methods.adjustScroll();
                                canNavigate = true;
                            }
                        });
                    }
                }
                ;
            },
            adjustScroll: function () {
                var listParent = object.parent();
                var childSet = object.children();
                var innerWidth = listParent.width();
                itemsWidth = (innerWidth) / itemsVisible;
                childSet.width(itemsWidth);
                var increment = (settings.flipPage) ? innerWidth : itemsWidth;

                if (settings.clone) {
                    object.css({
                        'left': -increment
                    });
                }
            },
            touchHandler: {
                xDown: null,
                yDown: null,
                handleTouchStart: function (evt) {
                    this.xDown = evt.touches[0].clientX;
                    this.yDown = evt.touches[0].clientY;
                },
                handleTouchMove: function (evt) {
                    if (!this.xDown || !this.yDown) {
                        return;
                    }

                    var xUp = evt.touches[0].clientX;
                    var yUp = evt.touches[0].clientY;

                    var xDiff = this.xDown - xUp;
                    var yDiff = this.yDown - yUp;

                    if (Math.abs(xDiff) > 0) {
                        if (xDiff > 0) {
                            methods.scrollRight();
                        } else {
                            methods.scrollLeft();
                        }
                    }

                    this.xDown = null;
                    this.yDown = null;
                    canNavigate = true;
                }
            }
        };
        if (methods[options]) {
            return methods[options].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof options === 'object' || !options) {
            return methods.init.apply(this);
        } else {
            $.error('Method "' + method + '" does not exist in flexisel plugin!');
        }
    };
})(jQuery);
