var MobileOnly;  // global scope for use in mobileFooter ...

(function($) {
    var MobileHeader, MobileBackButton;

    MobileOnly = (function() {
        MobileOnly.prototype = {
            defaults: {
                bodySelector: 'body.mobile'
            },

            isMobile: function() {
                var body = $(this.options.bodySelector);
                return Boolean(body.length);
            },

            // See if the <body> has a class name with the given value.
            isPage: function(klass) {
                var body = $(this.options.bodySelector);
                if (body && body.hasClass(klass)) {
                    return true;
                }
                return false;
            }
        };

        function MobileOnly(opts) {
            opts = ('object' === typeof opts) ? opts : {};
            this.options = $.extend(this.defaults, opts);
        }
        return MobileOnly;
    }());


    MobileHeader = (function() {
        MobileHeader.prototype = $.extend(new MobileOnly(), {
            defaults: {
                selector: "#smg_page_template_header_mobile_nav, #mobile_mega_menu_nav"
            },

            showHamburger: function() {
                this.menuPop.show();
            },
            hideHamburger: function() {
                this.menuPop.hide();
            },

            showSearch: function() {
                this.searchPop.show();
            },
            hideSearch: function() {
                this.searchPop.hide();
            },

            // Apparently iOS requires that an <a> tag have some sort of href attribute in order to register a click event.
            // This will add them if they are missing.
            prepare: function() {
                this.el.find('a').each(function(i, a) {
                    a = $(a);
                    if (!a.attr('href')) {
                        a.attr('href', '#');
                    }
                });
            },

            listen: function() {
                var self;
                self = this;

                this.el.on("click", ".open_menu", function (e) {
                    e.preventDefault();
                    var otherDrop = self.searchPop.css("display");
                    if (otherDrop == "block") {
                        self.searchPop.toggle();
                    }
                    self.menuPop.toggle();
                });

                this.el.on("click", ".open_search", function (e) {
                    e.preventDefault();
                    var otherDrop = self.menuPop.css("display");
                    if (otherDrop == "block") {
                        self.menuPop.toggle();
                    }
                    self.searchPop.toggle();
                });
            }
        });


        function MobileHeader(opts) {
            opts = ('object' === typeof opts) ? opts : {};
            this.options = $.extend(new MobileOnly(this.defaults).options, opts);
            if (this.isMobile()) {
                var selected = $(this.options.selector);
                if (selected.length) {
                    this.el = selected;
                    this.menuPop = $("#mobile_mega_menu_pop");
                    this.searchPop = $('#mobile_mega_menu_search');
                    this.prepare();
                    this.listen();
                }
            }
        }
        return MobileHeader;

    }());


    MobileBackButton = (function() {
        MobileBackButton.prototype = $.extend(new MobileOnly(), {
            defaults: {
                selector: ".mobile-back-button"
            },
            listen: function() {
                var body;
                body = $('body');
                body.on('click', this.options.selector, function(e) {
                    e.preventDefault();
                    window.history.back();
                });
            }
        });

        function MobileBackButton(opts) {
            opts = ('object' === typeof opts) ? opts : {};
            this.options = $.extend(new MobileOnly(this.defaults).options, opts);
            if (this.isMobile()) {
                var selected = $(this.options.selector);
                if (selected.length) {
                    this.listen();
                }
            }
        }
        return MobileBackButton;
    }());




}(window.jQuery));
