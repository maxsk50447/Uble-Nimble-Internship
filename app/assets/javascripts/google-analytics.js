(function (window, $) {
  'use strict';

  if (!window.Uble) {
    window.Uble = {};
  }


  var Uble = window.Uble;

  Uble.App = Uble.App || {};

  Uble.App.GoogleAnalytics = {

    initGooglyAnalytics: function () {
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