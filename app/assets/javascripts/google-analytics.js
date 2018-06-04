(function (window, $) {
  'use strict';

  if (!window.Uble) {
    window.Uble = {};
  }


  var Uble = window.Uble;

  Uble.App = Uble.App || {};

  Uble.App.GoogleAnalytics = {

    initGooglyAnalytics: function () {
      (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
          (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
          m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
      })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
      ga('create', 'UA-120231444-1', 'auto');
      
      document.addEventListener('turbolinks:load', function (event) {
        if (typeof ga === 'function') {
          ga('set', 'location', event.data.url);
          return ga('send', 'pageview');
        }
      });
    },

    Init: function () {
      this.initGooglyAnalytics();
    }
  };
})(window, jQuery);