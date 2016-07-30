// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function () {

	// Product Events
	$('.js-product').click( function () {
		$('.js-product').animate({width:'90%'});
		$('.js-product').removeClass('cthru');

		if (! $('.js-map').hasClass('cthru') ) {
			$('.js-map').animate({width:'5%'});
			$('.js-map').addClass('cthru');
		}
		if (! $('.js-review').hasClass('cthru') ) {
			$('.js-review').animate({width:'5%'});
			$('.js-review').addClass('cthru');
		}
	});
	// $('.js-closeProduct').click( function (e) {
	// 	e.stopPropagation();
	// 	$('.js-product').animate({width:'5%'});
	// 	$('.js-product').addClass('cthru');
	// });


	// Map Events
	$('.js-closeMap').click( function (e) {
		e.stopPropagation();
		$('.js-map').animate({width:'5%'});
		$('.js-map').addClass('cthru');
	});
	$('.js-map').click( function () {
		$('.js-map').animate({width:'90%'});
		$('.js-map').removeClass('cthru');

		if (! $('.js-product').hasClass('cthru') ) {
			$('.js-product').animate({width:'5%'});
			$('.js-product').addClass('cthru');
		}
		if (! $('.js-review').hasClass('cthru') ) {
			$('.js-review').animate({width:'5%'});
			$('.js-review').addClass('cthru');
		}
		if ( $('.js-product').hasClass('cthru') ) {
			$('.js-product').animate({width:'5%'});
			$('.js-product').addClass('cthru');
		}
	});

	//Review events
	$('.js-review').click( function () {
		$('.js-review').animate({width:'90%'});
		$('.js-review').removeClass('cthru');

		if (! $('.js-product').hasClass('cthru') ) {
			// $('.js-product').animate({width:'5%'});
			$('.js-product').addClass('cthru');
		}
		if (! $('.js-map').hasClass('cthru') ) {
			$('.js-map').animate({width:'5%'});
			$('.js-map').addClass('cthru');
		}
		// Moving to Review Panel from Map Panel fix
		if ( $('.js-product').hasClass('cthru') ) {
			$('.js-product').animate({width:'90%'});
			// $('.js-review').addClass('cthru');
		}
	});
	$('.js-closereview').click( function (e) {
		e.stopPropagation();
		$('.js-review').animate({width:'5%'});
		$('.js-review').addClass('cthru');
	});


	// Welcome Preview Product panel
	$('.js-preview').click( function () {
		$('.js-preview').animate({width:'95%'});
		$('.js-preview').removeClass('cthru');

		if (! $('.js-previewMap').hasClass('cthru') ) {
			$('.js-previewMap').animate({width:'5%'});
			$('.js-previewMap').addClass('cthru');
		}
	});
	
	// Welcome Preview Map panel
	$('.js-previewMap').click( function () {
		$('.js-previewMap').animate({width:'95%'});
		$('.js-previewMap').removeClass('cthru');

		if (! $('.js-preview').hasClass('cthru') ) {
			$('.js-preview').animate({width:'5%'});
			$('.js-preview').addClass('cthru');
		}
	});


// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);
})
