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
	//$(".product_item").addClass("slideRight");
	$(".catalog_filter").removeClass("catalog_filter");
});

// PRODUCT LIGHTBOX
$(document).on('click', '.productLightbox', function(){
  $('.productBackdrop, .productBox').animate({'opacity':'.50'}, 300, 'linear');
  $('.productBox').animate({'opacity':'1.00'}, 300, 'linear');
  $('.productBackdrop').css('display', 'block');
  $('.productBox').css('display', 'block');
  
});

$(document).on('click', '.closeProductBox', function(){
  close_product_box();
});

$(document).on('click', '.productBackdrop', function(){
  close_product_box();
});

function close_product_box()
{
  $('.productBackdrop, .productBox').animate({'opacity':'0'}, 300, 'linear', function(){
    $('.productBackdrop, .productBox').css('display', 'none');
  });
}

// VENDOR LIGHTBOX
$(document).on('click', '.vendorLightbox', function(){
  $('.vendorBackdrop, .vendorBox').animate({'opacity':'.50'}, 300, 'linear');
  $('.vendorBox').animate({'opacity':'1.00'}, 300, 'linear');
  $('.vendorBackdrop').css('display', 'block');
  $('.vendorBox').css('display', 'block');
  
});

$(document).on('click', '.closeVendorBox', function(){
  close_vendor_box();
});

$(document).on('click', '.vendorBackdrop', function(){
  close_vendor_box();
});

function close_vendor_box()
{
  $('.vendorBackdrop, .vendorBox').animate({'opacity':'0'}, 300, 'linear', function(){
    $('.vendorBackdrop, .vendorBox').css('display', 'none');
  });
}

// AJAX API CALLS

// fetching product info
$(document).on('click', '.fetch-product-info', function() {
	var $input = $(this);
		$.ajax({
		type: "GET",
		url: "/product_info",
		data: {
		  id: $input.data("product-id")
		},
		success: function(response) {
		  $("#fetch-product-result").html(response);
		}
	});
});

// fetching vendor info

$(document).on("click", ".fetch-vendor-info", function() {
	var $input = $(this);
	$.ajax({
		type: "GET",
		url: "/vendor_info",
		data: {
			id: $input.data("vendor-id")
		},
		success: function(response) {
			$("#fetch-vendor-result").html(response);
		}
	});
});

function checkCartLength(cartLength) {
	if (cartLength == 3) {
		alert("You can only compare up to 3 products.");
	}
}

$(document).ready( function(){
	var table = document.getElementById('compareTableVertical');
	var properties = ["name","price","image","description","categoryid","manufacturerid","vendorid","purchaseprice","quantity","remove"];
	propertiesNames = ["Name:","Price:","Image:","Description:","Category ID:","Manufacturer ID:","Vendor ID:","Purchase Price:","Quantity:","Click to Remove:"]
	for(var i=0; i < properties.length; i++){
		var tr = document.createElement('tr');
		var category = document.createElement('td');
		var textElement1 = document.createTextNode(propertiesNames[i]);
		category.appendChild(textElement1);
		tr.appendChild(category);
		for (var j = 0; j < 3; j++){
			var td = document.createElement('td');
			var textElement2 = document.createTextNode($("#"+properties[i]+j).text());
			td.appendChild(textElement2);
			tr.appendChild(td);
		}
		table.appendChild(tr);
	}
	$('#compareTableHorizontal').hide();
});
