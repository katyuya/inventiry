// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load',function(){

    $(function () {

      $('[name="product"]:radio').change( function() {
    	if($('[id=p1]').prop('checked')){

        //お店の料理
    	  $('#pro').css('display','block');
    	  $('#man').css('display','none');
    	} else if ($('[id=p2]').prop('checked')) {

        //手料理
    	  $('#pro').css('display','none');
    	  $('#man').css('display','block');
        }
      });
    });
});