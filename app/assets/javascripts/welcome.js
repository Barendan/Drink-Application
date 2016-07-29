// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).ready( function () {

	// $('.js-show').toggleClass('previewProducts');

	$('.js-show').click( function () {
		$('.js-show').animate({width:'100%'});
		$('.js-show').removeClass('opaque');
		// $('.js-show').toggleClass('previewProducts');
	});

	$('.close').click( function (e) {
		e.stopPropagation();
		$('.js-show').animate({width:'5%'});
		$('.js-show').addClass('opaque');
	});

// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);
})
