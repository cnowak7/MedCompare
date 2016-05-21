// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require catalog


$(document).on('click', '.catagory_img', function(){
	$(".catalog_filter").addClass("catalog_filter_test slideRight");
	$(".product_item").addClass("slideRight");
	$(".catalog_filter").removeClass("catalog_filter");
});

$(document).on('click', '.lightbox', function(){
  $('.backdrop, .box').animate({'opacity':'.50'}, 300, 'linear');
  $('.box').animate({'opacity':'1.00'}, 300, 'linear');
  $('.backdrop, .box').css('display', 'block');
});

$(document).on('click', '.close', function(){
  close_box();
});

$(document).on('click', '.backdrop', function(){
  close_box();
});

function close_box()
{
  $('.backdrop, .box').animate({'opacity':'0'}, 300, 'linear', function(){
    $('.backdrop, .box').css('display', 'none');
  });
}

$(document).on('click', '.fetch-info', function() {
	var $input = $(this);
	$.ajax({
	type: "GET",
	url: "/product_info",
	data: {
	  id: $input.data("product-id")
	},
	success: function(response) {
	  $("#fetch-result").html(response);
	}
	});
});
