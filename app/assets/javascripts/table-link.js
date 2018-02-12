(function(window, $) {
  'use strict';

  if (!window.Uble) {
    window.Uble = {};
  }
  

  var Uble = window.Uble;

  Uble.App = Uble.App || {};

  Uble.App.TableLink = {

    initTableLink: function(){
      $("tr[data-link]").click(function() {
        window.location = $(this).data("link")
      })
    },

    Init: function() {
      this.initTableLink();
    }
  };
})(window, jQuery);