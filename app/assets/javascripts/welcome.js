// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function () {


	// Welcome Preview Map Events
	$('.js-previewMap').click( function () {
		$('.js-previewMap').animate({width:'90%'});
		$('.js-previewMap').removeClass('closed');

		if (! $('.js-about').hasClass('closed') ) {
			$('.js-about').animate({width:'5%'});
			$('.js-about').addClass('closed');
		}
		if (! $('.js-preview').hasClass('closed') ) {
			$('.js-preview').animate({width:'5%'});
			$('.js-preview').addClass('closed');
		}
	});
	// $('.js-closeProduct').click( function (e) {
	// 	e.stopPropagation();
	// 	$('.js-product').animate({width:'5%'});
	// 	$('.js-product').addClass('closed');
	// });


	// Welcome About Events
	// $('.js-closeAbout').click( function (e) {
	// 	e.stopPropagation();
	// 	$('.js-about').animate({width:'5%'});
	// 	$('.js-about').addClass('closed');
	// });
	$('.js-about').click( function () {
		$('.js-about').animate({width:'90%'});
		$('.js-about').removeClass('closed');

		if (! $('.js-previewMap').hasClass('closed') ) {
			$('.js-previewMap').animate({width:'5%'});
			$('.js-previewMap').addClass('closed');
		}
		if (! $('.js-preview').hasClass('closed') ) {
			$('.js-preview').animate({width:'5%'});
			$('.js-preview').addClass('closed');
		}
		if ( $('.js-previewMap').hasClass('closed') ) {
			$('.js-previewMap').animate({width:'5%'});
			$('.js-previewMap').addClass('closed');
		}
	});

	//Welcome Preview Product events
	$('.js-preview').click( function () {
		$('.js-preview').animate({width:'90%'});
		$('.js-preview').removeClass('closed');

		if (! $('.js-previewMap').hasClass('closed') ) {
			// $('.js-previewMap').animate({width:'5%'});
			$('.js-previewMap').addClass('closed');
		}
		if (! $('.js-about').hasClass('closed') ) {
			$('.js-about').animate({width:'5%'});
			$('.js-about').addClass('closed');
		}
		// Moving to Review Panel from Map Panel fix
		if ( $('.js-previewMap').hasClass('closed') ) {
			$('.js-previewMap').animate({width:'90%'});
			// $('.js-review').addClass('closed');
		}
	});



// --------------------------------------------------

	// Product Events
	$('.js-product').click( function () {
		$('.js-product').animate({width:'90%'});
		$('.js-product').removeClass('closed');

		if (! $('.js-map').hasClass('closed') ) {
			$('.js-map').animate({width:'5%'});
			$('.js-map').addClass('closed');
		}
		if (! $('.js-review').hasClass('closed') ) {
			$('.js-review').animate({width:'5%'});
			$('.js-review').addClass('closed');
		}
	});
	// $('.js-closeProduct').click( function (e) {
	// 	e.stopPropagation();
	// 	$('.js-product').animate({width:'5%'});
	// 	$('.js-product').addClass('closed');
	// });


	// Map Events
	$('.js-closeMap').click( function (e) {
		e.stopPropagation();
		$('.js-map').animate({width:'5%'});
		$('.js-map').addClass('closed');
	});
	$('.js-map').click( function () {
		$('.js-map').animate({width:'90%'});
		$('.js-map').removeClass('closed');

		if (! $('.js-product').hasClass('closed') ) {
			$('.js-product').animate({width:'5%'});
			$('.js-product').addClass('closed');
		}
		if (! $('.js-review').hasClass('closed') ) {
			$('.js-review').animate({width:'5%'});
			$('.js-review').addClass('closed');
		}
		if ( $('.js-product').hasClass('closed') ) {
			$('.js-product').animate({width:'5%'});
			$('.js-product').addClass('closed');
		}
	});

	//Review events
	$('.js-review').click( function () {
		$('.js-review').animate({width:'90%'});
		$('.js-review').removeClass('closed');

		if (! $('.js-product').hasClass('closed') ) {
			// $('.js-product').animate({width:'5%'});
			$('.js-product').addClass('closed');
		}
		if (! $('.js-map').hasClass('closed') ) {
			$('.js-map').animate({width:'5%'});
			$('.js-map').addClass('closed');
		}
		// Moving to Review Panel from Map Panel fix
		if ( $('.js-product').hasClass('closed') ) {
			$('.js-product').animate({width:'90%'});
			// $('.js-review').addClass('closed');
		}
	});
	$('.js-closereview').click( function (e) {
		e.stopPropagation();
		$('.js-review').animate({width:'5%'});
		$('.js-review').addClass('closed');
	});

// ------------------------------------------------

		      




// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);
})
