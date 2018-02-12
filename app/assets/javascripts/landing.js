(function(window, $) {
  'use strict';

  if (!window.Uble) {
    window.Uble = {};
  }
  

  var Uble = window.Uble;

  Uble.App = Uble.App || {};

  Uble.App.Landing = {

    initLanding: function(){
      $(document).ready(function() {
        setTimeout(function() {
          $("#main").removeClass("is-loading");
        }, 100)
      });
    },

    Init: function() {
      this.initLanding();
    }
  };
})(window, jQuery);