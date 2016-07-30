// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function () {

	// Product Events
	$('.js-product').click( function () {
		$('.js-product').animate({width:'95%'});
		$('.js-product').removeClass('cthru');

		if (! $('.js-map').hasClass('cthru') ) {
			$('.js-map').animate({width:'5%'});
			$('.js-map').addClass('cthru');
		}
	});
	$('.js-closeProduct').click( function (e) {
		e.stopPropagation();
		$('.js-product').animate({width:'5%'});
		$('.js-product').addClass('cthru');
	});



	// Map Events
	$('.js-closeMap').click( function (e) {
		e.stopPropagation();
		$('.js-map').animate({width:'5%'});
		$('.js-map').addClass('cthru');
	});
	$('.js-map').click( function () {
		$('.js-map').animate({width:'95%'});
		$('.js-map').removeClass('cthru');

		if (! $('.js-product').hasClass('cthru') ) {
			$('.js-product').animate({width:'5%'});
			$('.js-product').addClass('cthru');
		}
	});

// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);
})
