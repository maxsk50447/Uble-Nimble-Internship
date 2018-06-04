var ready = function() {
  'use strict';

  if (!window.Uble) {
    window.Uble = {};
  }

  var Uble = window.Uble;

  Uble.App = Uble.App || {};

  Uble.Init = (function() {
    Uble.App.Landing.Init();
    Uble.App.TableLink.Init();
    Uble.App.GoogleAnalytics.Init();
  })();
};

window.$(document).on('turbolinks:load', ready)