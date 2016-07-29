// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).ready( function () {

	// $('.js-show').toggleClass('previewProducts');

	$('.container').click( function () {
		$('.js-show').toggleClass('previewProducts');
		$('.js-show').toggleClass('hidden');


		// $('.js-show').toggleClass('previewProducts');

	});



// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);
})