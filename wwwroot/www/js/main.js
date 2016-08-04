
// Smooth scroll
uAgent = navigator.userAgent;
isMobileDevice = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(uAgent.toLowerCase()));
macOS = uAgent.match(/(iPad|iPhone|iPod|Macintosh)/g) ? true : false;
mobileIE = uAgent.indexOf('IEMobile') !== -1;
touch = false;
windowWidth = $(window).width();
windowHeight = $(window).height();
documentHeight = $(document).height();
isNewerIe = uAgent.match(/msie (9|([1-9][0-9]))/i);
isOlderIe = uAgent.match(/msie/i) && !isNewerIe;
isAncientIe = uAgent.match(/msie 6/i);
isIe = isAncientIe || isOlderIe || isNewerIe;
latestKnownScrollY = $('html').scrollTop() || $('body').scrollTop();
ticking = false;

// Smooth scroll end

$(document).ready(function () {

    $('.readmore').readmore({
        speed: 500,
        moreLink: '<a href="#">Read more</a>',
        lessLink: '<a href="#">Read less</a>',
        collapsedHeight: 0,
        afterToggle: function(e){},
        beforeToggle: function(e) {
            if (e.innerText == "Read more") {
                this.scrollPosition = $('body').scrollTop();
            }
            else if (e.innerText == "Read less" && this.scrollPosition) {
                $('body').animate({ scrollTop: this.scrollPosition + 'px' }, 200);
                this.scrollPosition = null;
            }
        }
    });

    if ('ontouchstart' in window || 'onmsgesturechange' in window) {
        touch = true;
    }

    var footerHeight = $('footer').height();
    var map = null;
    var marker = null;

    $(window).on('load', function () {
        // PRELOADER
        var preloader = $('#page-preloader');
        var loadingDelay = 1000;
        setTimeout(function () {
            for (var i = 0; i <= 100; i++){
                (function(i){
                 setTimeout(function () {
                    preloader.css({
                      '-moz-background': 'radial-gradient(circle,transparent '+i+'%, white 0%)',
                      '-o-background': 'radial-gradient(circle,transparent '+i+'%, white 0%)',
                      '-webkit-background': 'radial-gradient(circle,transparent '+i+'%, white 0%)',
                     'background': 'radial-gradient(circle,transparent '+i+'%, white 0%)'
                     });
                }, 3*i);
             })(i);
            }
            preloader.removeClass('pageload-loading');
        }, loadingDelay);
        setTimeout(function () {
            preloader.css('z-index','-1');
            $('.main-section .animated').addClass('play-animation');
            $('.main-section').addClass('play-animation');
        }, loadingDelay + 300);
        // PRELOADER END
        Parallax.initialize();
    });

    $(window).on("scroll", function () {
        latestKnownScrollY = $('html').scrollTop() || $('body').scrollTop();
        requestAnimation();
        stopSliders();
        if ($(document).width() > 1024) {
            if ($(window).scrollTop() > 100) {
                $(".navbar.main-menu").addClass("navbar-fixed");
            } else {
                $(".navbar.main-menu").removeClass("navbar-fixed");
            }
        }
        // fix menu end
    });
    $(document)
      .on('focus', 'input,textarea ', function(e) {
          $('body').addClass('fixfixed');
      })
      .on('blur', 'input,textarea ', function(e) {
          $('body').removeClass('fixfixed');
      });
    if ($(document).width() > 1024) {
        if ($(window).scrollTop() > 100) {
            $(".navbar.main-menu").addClass("navbar-fixed");
        } else {
            $(".navbar.main-menu").removeClass("navbar-fixed");
        }
    }
    // mobile menu
    if ($(document).width() < 1025) {
        $(".main-menu").addClass("mobile-menu");
    } else {
        $(".main-menu").removeClass("mobile-menu");
    }

    $(window).on("resize", function () {
        windowWidth = $(window).width();
        windowHeight = $(window).height();
        Parallax.initialize();
        if ($(document).width() < 1025) {
            $(".main-menu").addClass("mobile-menu");
        } else {
            $(".main-menu").removeClass("mobile-menu");
        }
        $('body').css('padding-bottom', footerHeight);
    });

    $(document).on("click", ".mobile-menu-btn", function () {
        closeModal();
        $(".main-menu").toggleClass("mobile-menu-open");
        $(".mobile-menu-btn").toggleClass("active");
        $("html, body").toggleClass("no-scroll");
    });
    // mobile menu END

    // main block height
    if (!$('.main-section').hasClass("no-index")) {
        $('.main-section').css('height', $(window).height());
        $(window).resize(function () {
            $('.main-section').css('height', $(window).height());
        });
    }
    // main block height END
    
    // footer height
    $('body').css('padding-bottom', footerHeight);
    // footer height END

    // anchor scrollTo
    if($("body").hasClass("index")) {
        $('.navbar-nav a[href*=#]').bind("click", function (e) {
            var anchor = $(this);
            if(anchor.parent().hasClass('reserve'))
                return;

            $('.navbar-nav > li').removeClass('active');
            $(this).parent(".navbar-nav li:not(.reserve)").addClass('active');
            $('html, body').stop().animate({
                scrollTop: $(anchor.attr('href')).offset().top
            }, 500);
            
            if($(this).parents(".main-menu").is(".mobile-menu, .mobile-menu-open")) {
                $(".main-menu").removeClass("mobile-menu-open");
                $(".mobile-menu-btn").removeClass("active");
                $("html, body").removeClass("no-scroll");
            }

            if (anchor.attr('href') == '#contact-us') {
                $('#u_name').focus();
            }

            e.preventDefault();
            return false;
        });

        $('.nav-scroll').bind("click", function (e) {
            var anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $(anchor.attr('href')).offset().top
            }, 500);

            if (anchor.attr('href') == '#contact-us') {
                $('#u_name').focus();
            }

            e.preventDefault();
            return false;
        });

        $("section, footer").waypoint(function (direction) {
            if (direction === "down") {
                $(".navbar-nav a[href*=#" + this.element.id + "]").parent().addClass('active').siblings().removeClass('active');
            }
        }, {
            offset: "50%"
        });
        
        $("section, footer").waypoint(function (direction) {
            if (direction === "up") {
                $(".navbar-nav a[href*=#" + this.element.id + "]").parent().addClass('active').siblings().removeClass('active');
                if(this.element.id == "main-section") {
                    $(".navbar-nav > li").removeClass('active');
                }
            }
        }, {
            offset: "-1%"
        });
    }
    // anchor scroll end

    // counter
    if($('.counter').length > 0) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    }
    // counter end

    // slide bottom
    $(document).on("click", ".slide-bottom span", function () {
        $('html, body').animate({'scrollTop': $('section:eq(1)').offset().top}, 500);
        return false;
    });
    // slide bottom end

    //form reservation focus
    $(document).on("focus", ".form-control", function () {
        $(this).parent().find(".input-group-addon").addClass("focus");
    });

    $(document).on("blur", ".form-control", function () {
        $(this).parent().find(".input-group-addon").removeClass("focus");
    });
    //form reservation focus end

    // resrevation open
    $(document).on("click", ".reserve-popup, .main-menu li.reserve", function(){
        $("#reservation").fadeIn();
        return false;
    });
    $(document).on("click", "#reservation .modal-header button.close, #reservation", function(){
        $("#reservation").fadeOut();
        return false;
    });
    $(document).on("click", ".modal-content", function(){
        return false;
    });
    $(document).on("click", ".modal-content .btn-send", function(){
        event.stopPropagation();
    });
    // resrevation open end

    // share links open
    $(document).on("click", ".share p", function () {
        $(this).toggleClass("active");
        $(this).parent().find("ul.share-links").slideToggle("active");
    });
    // share links open end
    
    //Reserve form validation
    /**$(document).on("submit", "form#formSendFeedback, form#formSendFeedback-2", function() {
        if(!validation($(this).attr("id"))) {
            //here code if validation is successful
        }
        return false;
    });**/
    //End reserve form validation
    
    //Comment form validation
    /**$(document).on("submit", "form#formComment", function() {
        if(!validation($(this).attr("id"))) {
            //here your code
        }
        return false;
    }); **/
    //End comment form validation
    //Reserve form validation
    /** $(document).on("submit", "form#subscribe-form", function() {
        if(!validation($(this).attr("id"))) {
            $(this).find('input[type="email"]').parent().append('<strong class="field-success">Success</strong>');
        }
        return false;
    }); **/
    //End reserve form validation

    var allSliders = [];

    //Initialize all sliders
    if(typeof Resto != 'undefined') {
        if($('.main-section.version-4 .main-section-slider').length > 0) {
            mainSlider = Resto.Slider.in($('.main-section.version-4 .main-section-slider'), {
                loop: true,
                autoplay: !isMobileDevice,
                type: 'book-slider',
                dots: false,
                nextArrow: '.main-section.version-4 .next',
                previousArrow: '.main-section.version-4 .prev'
            });
            allSliders.push(mainSlider);
        }
        
        if($('#white-papers-carousel').length > 0) {
            papersSlider = Resto.Slider.in($('#white-papers-carousel'), {
                type: 'accordion-slider',
                dots: true,
                loop: true,
                dotsClass: "dark-slider-dots",
                autoplay: !isMobileDevice,
                arrowsClass: "sliderArrowsDark",
                showArrows: !isMobileDevice,
            });
            allSliders.push(papersSlider);
        }

        if($('#case-studies-carousel').length > 0) {
            clientSlider = Resto.Slider.in($('#case-studies-carousel'), {
                type: 'accordion-slider',
                dots: true,
                loop: true,
                autoplay: !isMobileDevice,
                showArrows: !isMobileDevice,
                arrowsClass: "sliderArrowsWhite",
            });
            allSliders.push(clientSlider);
        }


        if($('.news-home.version-4 .news-list').length > 0) {
            dishesSlider4 = Resto.Slider.in($('.news-home.version-4 .news-list'), {
                dots: false,
                loop: true,
                autoplay: !isMobileDevice,
                type: 'book-slider',
                nextArrow: '.news-home.version-4 .news-body .next',
                previousArrow: '.news-home.version-4 .news-body .prev'
            });
            allSliders.push(dishesSlider4);
        }

        if($('.team-carousel').length > 0) {
            teamSlider = Resto.Slider.in($('.team-carousel'), {
                dots: true,
                autoplay: false, // no auto play for team
                type: 'inline-multi-slider',
                pagePagination: true
            });
            //allSliders.push(teamSlider);
        }
        
        if($('.news-home.version-1 .news-list').length > 0) {
            newsSlider = Resto.Slider.in($('.news-home.version-1 .news-list'), {
                dots: true,
                loop: true,
                autoplay: !isMobileDevice,
                type: 'book-slider',
                nextArrow: '.news-home.version-1 .news-body .next',
                previousArrow: '.news-home.version-1 .news-body .prev',
            });
            allSliders.push(newsSlider);
        }
    }
    //Initialize all sliders end

    function stopSliders() {
        _.forEach(allSliders, function (slider) {
            slider.stop();
        });
        //console.log('stopped sliders!');
    }

    var tid = !isMobileDevice ? setInterval(autoStartSliders, 2500) : null;
    function autoStartSliders() {
        if (openedModal) 
            return;
        var now = jQuery.now();
        var delayStart = 5000;
        var stoppingSliders = false;
        _.each(allSliders, function (slider) {
            if (stoppingSliders)
                return;
            if (slider.data.touchedClock && now - slider.data.touchedClock <= delayStart) {
                stoppingSliders = true;
                stopSliders();
            }
        });
        _.forEach(allSliders, function (slider) {
            var dontStart1 = slider.data.touchedClock > 0 && now - slider.data.touchedClock < delayStart;
            var dontStart2 = slider.data.stoppedClock > 0 && now - slider.data.stoppedClock < delayStart;
            if (!dontStart1 && !dontStart2 && slider.settings.autoplay) {
                slider.play();
                //console.log('started slider!');
            }
        });
    }

    // galleru initialize
    if($('#gallery-list').length > 0) {
        document.getElementById('gallery-list').onclick = function (event) {
            event = event || window.event;
            var target = event.target || event.srcElement,
                link = target.src ? target.parentNode : target,
                options = {index: link, event: event},
                links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        }
    }
    // galleru initialize end

    // animation
    if ($(document).width() > 1024) {
        $(".main-section .main-section-title h1, .main-section .main-section-title h3, .main-section .main-section-title a, .main-section.version-4 .arrow-block a").hide().show().resto_animated("fadeInUp", "fadeOutUp");
    }
    //End animation

    // modals open/close
    var openedModal = null;
    $(document).on("click", ".open-modal", function(){
        var id = this.id;
        openedModal = $("#"+id+"-modal");
        openedModal.fadeIn("slow");
        $('html, body').css({
            'overflow': 'hidden'
        });
        $('.ui-widget-overlay').fadeIn("slow");
        stopSliders();
        return false;
    });

    function closeModal() {
        if (openedModal)
            openedModal.fadeOut("slow");
        $('html, body')
            .delay(1000)
            .queue(function (next) {
                $(this).css('overflow', 'auto');
                next();
            });
        $('.ui-widget-overlay').fadeOut("slow");
        openedModal = null;
        return false;
    }

    $(document).on("click", ".close-modal", function(){
        return closeModal();
    });
});

(function ($) {
    "use strict";
    $.fn.resto_animated = function (inEffect, outEffect) {
        $(this).css("opacity", "0").addClass("animated").waypoint(function (dir) {
            if (dir === "down")
                $(this.element).removeClass(outEffect).addClass(inEffect).css("opacity", "1");
        }, {
            offset: "90%"
        });

        $(this).css("opacity", "0").addClass("animated").waypoint(function (dir) {
            if (dir === "up")
                $(this.element).removeClass(outEffect).addClass(inEffect).css("opacity", "1");
        }, {
            offset: "5%"
        });
    };
})(jQuery);

(function() {
    'use strict';
    var vendors = ['webkit', 'moz'];
    for (var i = 0; i < vendors.length && !window.requestAnimationFrame; ++i) {
        var vp = vendors[i];
        window.requestAnimationFrame = window[vp+'RequestAnimationFrame'];
        window.cancelAnimationFrame = (window[vp+'CancelAnimationFrame'] || window[vp+'CancelRequestAnimationFrame']);
    }
    
    if (/iP(ad|hone|od).*OS 6/.test(window.navigator.userAgent) // iOS6 is buggy
        || !window.requestAnimationFrame || !window.cancelAnimationFrame) {
        var lastTime = 0;
        window.requestAnimationFrame = function(callback) {
            var now = Date.now();
            var nextTime = Math.max(lastTime + 16, now);
            return setTimeout(function() { callback(lastTime = nextTime); },
                nextTime - now);
        };
        window.cancelAnimationFrame = clearTimeout;
    }
}());

function updateParallax() {
    ticking = false;
    Parallax.update();
}

function requestAnimation() {
    if (!ticking) {
        requestAnimationFrame(updateParallax);
    }
    ticking = true;
}

function initMap() {
    // google map init map
    function initialize() {
        var mapStyle = [
            {
                "featureType": "administrative",
                "elementType": "all",
                "stylers": [
                    {
                        "visibility": "simplified"
                    }
                ]
            },
            {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#fcfcfc"
                    }
                ]
            },
            {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#fcfcfc"
                    }
                ]
            },
            {
                "featureType": "road.highway",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#dddddd"
                    }
                ]
            },
            {
                "featureType": "road.arterial",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#dddddd"
                    }
                ]
            },
            {
                "featureType": "road.local",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#eeeeee"
                    }
                ]
            },
            {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "color": "#dddddd"
                    }
                ]
            }
        ];

        var styledMap = new google.maps.StyledMapType(mapStyle,
            {name: "Styled Map"});

        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 16,
            scrollwheel: false,
            center: {lat: 42.374366, lng: -71.119987}
        });

        map.mapTypes.set('map_style', styledMap);
        map.setMapTypeId('map_style');

        // marker
        marker = new google.maps.Marker({
            map: map,
            position: {lat: 42.374366, lng: -71.119987},
            title: "Nevo's Headquarters"
        });

        marker.addListener('click', function() {
            var url = "https://www.google.com/maps/place/26+Church+St,+Cambridge,+MA+02138"
            var win = window.open(url, '_blank');
            win.focus();
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
    // google map END

    // footer map open
    $(document).on("click", ".open-map", function () {
        $(this).addClass("_open-map");
        return false;
    });
    $(document).on("click", "#map", function () {
        return false;
    });
    $(document).on("click", "body", function () {
        $('.open-map').removeClass("_open-map");
        window.setTimeout(function() {
            if (map && marker) {
                map.panTo(marker.getPosition());
                //map.setMapTypeId(google.maps.MapTypeId.ROADMAP);
            }
        }, 500);
    });
}

function validation (formId) {
    return false;
    /* disabled the form validation
    if($('form#'+ formId +' .field-success')[0] ) $('form#'+ formId +' .field-success').remove();
    $('form#'+ formId +' .field-error').remove();
    $('form#'+ formId +' .form-control').removeClass('inputError');
    var hasError = false;
    $('form#'+ formId +' .requiredField').each(function() {
        var spanError = '<span class="field-error" style="background-color: white; padding:1px 4px 1px 4px; color:red;">';
        if(jQuery.trim($(this).val()) == '' || jQuery.trim($(this).val()) == jQuery.trim($(this).attr('placeholder'))){
            $(this).parent().append(spanError + 'This is a required field</span>');
            $(this).addClass('inputError');
            hasError = true;
        } else {
            if($(this).hasClass('email')) {
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                if(!emailReg.test(jQuery.trim($(this).val()))){
                    $(this).parent().append(spanError + 'Please enter a valid email address.</span>');
                    $(this).addClass('inputError');
                    hasError = true;
                } 
            } else if($(this).hasClass('phone')) {
                var phoneReg = /^\+?[0-9 ]*$/;
                if(!phoneReg.test(jQuery.trim($(this).val()))){
                    $(this).parent().append(spanError + 'Please enter a valid phone number.</span>');
                    $(this).addClass('inputError');
                    hasError = true;
                } 
            } else if($(this).hasClass('date')) {
                var dateReg = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/;
                if(!dateReg.test(jQuery.trim($(this).val()))){
                    $(this).parent().append(spanError + 'Please enter a valid date.</span>');
                    $(this).addClass('inputError');
                    hasError = true;
                } 
            } else if($(this).hasClass('time')) {
                var dateReg = /^[0-9]{2}:[0-9]{2}$/;
                if(!dateReg.test(jQuery.trim($(this).val()))){
                    $(this).parent().append(spanError + 'Please enter a valid time.</span>');
                    $(this).addClass('inputError');
                    hasError = true;
                } 
            } else if($(this).hasClass('persons')) {
                var personsReg = /^[1-9]{1}[0-9]{0,1}$/;
                if(!personsReg.test(jQuery.trim($(this).val()))){
                    $(this).parent().append(spanError + 'Please enter a valid number of persons.</span>');
                    $(this).addClass('inputError');
                    hasError = true;
                } 
            }
        }
    });
    
    return hasError; **/
}

(function() {
    'use strict';
    angular
        .module('app', [], ['$locationProvider', function($locationProvider) {
            $locationProvider.html5Mode({
                enabled: true,
                rewriteLinks:false
            });
        }])
        .controller('controller', controller);

    controller.$inject = [
        '$scope', '$filter', '$window' , '$http', '$timeout', '$log'];

    function controller($scope, $filter, $window, $http, $timeout, $log) {

        activate();

        function activate() {
            _initDates();
            _initTeamMembers();
            _initContactSend();
            _initTracking();
            _initVersion();
        }

        function _initVersion() {
            $http.get('./includes/version.txt').then(function(response) {
                $scope.version = response && response.data ? response.data : '??';
            }, function(error) {
                $log.error('failed to get version!')
                $scope.version = '??';
            });
        }

        function _initTracking() {
            $scope.track = function(type, name) {
                _gaq.push(['_trackEvent', type, name]);
            };
        }

        function _isEmptyField(field) {
            return !field || field == "";
        }

        function _initContactSend() {
            $scope.sendBusy = false;
            $scope.sendMail = function() {
                var from = $scope.emailAddress;
                var name = $scope.contactName;
                var phone = $scope.phoneNumber;
                var message = $scope.message;
                $scope.nameMessage = $scope.emailMessage = $scope.errorMessage = null;
                if (_isEmptyField(name)) {
                    $scope.nameMessage = "Please provide your name!";
                    return;
                }
                if (_isEmptyField(from) || from.indexOf('@') <= 0) {
                    $scope.emailMessage = "Please provide valid email address!";
                    return;
                }
                if (_isEmptyField(message)) {
                    $scope.errorMessage = "Please provide a message!";
                    return;
                }
                var url = "./sendMail.aspx" +
                    "?from=" + encodeURIComponent(from) +
                    "&name=" + encodeURIComponent(name) +
                    "&phone=" + encodeURIComponent(phone) +
                    "&message=" + encodeURIComponent(message);
                $scope.sendBusy = true;
                $http.get(url).then(function (response) {
                    $scope.message = "";
                    var badResponse = !response || !response.data || response.data.substring(0,1) == '<';
                    if (badResponse)
                        $scope.badMessage = "Unable to send your message!";
                    else
                        $scope.goodMessage = "Thank You! Your message was sent successfully!";
                }, function (error) {
                    if (error) console.log(error);
                    $scope.badMessage = "Oh! Sorry but something bad happened and we could not send your message!"
                }).finally(function () {
                    $timeout(function () {
                        $scope.sendBusy = false;
                        $scope.goodMessage = $scope.errorMessage = $scope.badMessage = undefined;
                        $scope.message = "";
                    }, 30000)
                });
            }
        }

        function _initDates() {
            $scope.nowYear = $filter('date')(new Date(), 'yyyy');
        }

        function _initTeamMembers() {
            var teamCarousel = document.getElementsByClassName("team-carousel");
            var width = teamCarousel[0].clientWidth - 10;
            var memberWidth = width > 1100 ? 215 : 285;
            var nTeamMembers = Math.floor(width / memberWidth);
            var teamMemberWidth = Math.floor(width / nTeamMembers);
            $scope.teamMemberWidth = teamMemberWidth + 'px';
            var padding = Math.floor((width - (nTeamMembers * 285)) / 2);
            $scope.teamMemberPadding = '0px ' + padding + 'px';
            $scope.teamMemberHeight = width <= 320 ? '375px' : '390px';
            $scope.memberWidth = memberWidth + 'px';
        }
    }
})();

(function() {
    'use strict';
    angular.module("app")
        .directive('caseStudy', caseStudy);

    function caseStudy() {
        return {
            templateUrl: './templates/caseStudy.html',
            restrict: 'E',
            replace: true,
            transclude: true,
            scope: {
                caseId: '@',
                imageSrc: '@',
                imageAlt: '@',
                title: '@',
                website: '@',
                name: '@',
                industry: '@',
                text: '@'
            },
            link: function(scope, element) {
                scope.track = function(type, name) {
                    _gaq.push(['_trackEvent', type, name]);
                };
            }
        };
    };
})();

(function() {
    'use strict';
    angular.module("app")
        .directive('whitePaper', whitePaper);

    function whitePaper() {
        return {
            templateUrl: './templates/whitePaper.html',
            restrict: 'E',
            replace: true,
            transclude: true,
            scope: {
                pdfFile: '@',
                imageSrc: '@',
                imageAlt: '@',
                title: '@',
                text: '@'
            },
            link: function(scope, element) {
                scope.track = function(type, name) {
                    _gaq.push(['_trackEvent', type, name]);
                };
            }
        };
    };
})();

(function() {
    'use strict';
    angular.module("app")
        .directive('fieldError', fieldError);

    function fieldError() {
        return {
            templateUrl: './templates/fieldError.html',
            restrict: 'E',
            replace: true,
            transclude: true,
            scope: {
                message: '@'
            }
        };
    };
})();
