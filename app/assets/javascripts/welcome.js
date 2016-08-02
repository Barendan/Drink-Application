// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready( function () {


	// Welcome Preview Map Events
	$('.js-previewMap').click( function () {
		$('.js-previewMap').animate({width:'90%'});
		$('.js-previewMap').removeClass('closed');

		initialize();

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
	// Map Starts here
  var map;
  var directionsService;
  var stepDisplay;
 
  var position;
  var marker = [];
  var polyline = [];
  var poly2 = [];
  var poly = null;
  var startLocation = [];
  var endLocation = [];
  var timerHandle = [];
    
  
  var speed = 0.000005, wait = 1;
  var infowindow = null;
  
  var myPano;   
  var panoClient;
  var nextPanoId;
  
  var startLoc = new Array();
  startLoc[0] = 'rio claro, trinidad';
  startLoc[1] = 'preysal, trinidad';
  startLoc[2] = 'san fernando, trinidad';
  startLoc[3] = 'couva, trinidad';

  var endLoc = new Array();
  endLoc[0] = 'princes town, trinidad';
  endLoc[1] = 'tabaquite, trinidad';
  endLoc[2] = 'mayaro, trinidad';
  endLoc[3] = 'arima, trinidad';


  var Colors = ["#FF0000", "#00FF00", "#0000FF"];


	function initialize() { 

		if (map) {
			return;
		}
	    console.log("MAP", map);
		

	  infowindow = new google.maps.InfoWindow(
	    { 
	      size: new google.maps.Size(150,50)
	    });

	    var myOptions = {
	      zoom: 16,
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    }

	    map = new google.maps.Map(document.getElementById("map"), myOptions);
	    address = 'Trinidad and Tobago'
	    geocoder = new google.maps.Geocoder();
	    geocoder.geocode( { 'address': address}, function(results, status) {
	     map.fitBounds(results[0].geometry.viewport);

	    }); 
	  setRoutes();
	  } 


	function createMarker(latlng, label, html) {
	// alert("createMarker("+latlng+","+label+","+html+","+color+")");
	    var contentString = '<b>'+label+'</b><br>'+html;
	    var marker = new google.maps.Marker({
	        position: latlng,
	        map: map,
	        title: label,
	        zIndex: Math.round(latlng.lat()*-100000)<<5
	        });
	        marker.myname = label;


	    google.maps.event.addListener(marker, 'click', function() {
	        infowindow.setContent(contentString); 
	        infowindow.open(map,marker);
	        });
	    return marker;
	}  

	function setRoutes(){   

	    var directionsDisplay = new Array();

	    for (var i=0; i< startLoc.length; i++){
	      var rendererOptions = {
	          map: map,
	          suppressMarkers : true,
	          preserveViewport: true
	      }
	      directionsService = new google.maps.DirectionsService();

	      var travelMode = google.maps.DirectionsTravelMode.DRIVING;  
	      var request = {
	          origin: startLoc[i],
	          destination: endLoc[i],
	          travelMode: travelMode
	      };  

	      directionsService.route(request,makeRouteCallback(i,directionsDisplay[i]));
	}   


	function makeRouteCallback(routeNum,disp){
		console.log("makeRouteCallback");

	      if (polyline[routeNum] && (polyline[routeNum].getMap() != null)) {
	       startAnimation(routeNum);
	       return;
	      }
	      return function(response, status){
	      if (status == google.maps.DirectionsStatus.OK){
	      console.log("Route bro:",routeNum);

	        var bounds = new google.maps.LatLngBounds();
	        var route = response.routes[0];
	        startLocation[routeNum] = new Object();
	        endLocation[routeNum] = new Object();


	        polyline[routeNum] = new google.maps.Polyline({
	        path: [],
	        strokeColor: '#FFFF00',
	        strokeWeight: 3
	        });

	        poly2[routeNum] = new google.maps.Polyline({
	        path: [],
	        strokeColor: '#FFFF00',
	        strokeWeight: 3
	        });     


	        // For each route, display summary information.
	        var path = response.routes[0].overview_path;
	        var legs = response.routes[0].legs;


	        disp = new google.maps.DirectionsRenderer(rendererOptions);     
	        disp.setMap(map);
	        disp.setDirections(response);


	        //Markers               
	        for (i=0;i<legs.length;i++) {
	          if (i == 0) { 
	            startLocation[routeNum].latlng = legs[i].start_location;
	            startLocation[routeNum].address = legs[i].start_address;
	            // marker = google.maps.Marker({map:map,position: startLocation.latlng});
	            marker[routeNum] = createMarker(legs[i].start_location,"start",legs[i].start_address,"green");
	          }
	          endLocation[routeNum].latlng = legs[i].end_location;
	          endLocation[routeNum].address = legs[i].end_address;
	          var steps = legs[i].steps;

	          for (j=0;j<steps.length;j++) {
	            var nextSegment = steps[j].path;                
	            var nextSegment = steps[j].path;

	            for (k=0;k<nextSegment.length;k++) {
	                polyline[routeNum].getPath().push(nextSegment[k]);
	                //bounds.extend(nextSegment[k]);
	            }

	          }
	        }

	      }       

	         polyline[routeNum].setMap(map);
	         //map.fitBounds(bounds);
	         startAnimation(routeNum);  

	    } // else alert("Directions request failed: "+status);

	  }

	}

	    var lastVertex = 1;
	    var stepnum=0;
	    var step = 50; // 5; // metres
	    var tick = 100; // milliseconds
	    var eol= [];
	//----------------------------------------------------------------------                
	 function updatePoly(i,d) {
		console.log("updatePoly");

	 // Spawn a new polyline every 20 vertices, because updating a 100-vertex poly is too slow
	    if (poly2[i].getPath().getLength() > 20) {
	          poly2[i]=new google.maps.Polyline([polyline[i].getPath().getAt(lastVertex-1)]);
	          // map.addOverlay(poly2)
	        }

	    if (polyline[i].GetIndexAtDistance(d) < lastVertex+2) {
	        if (poly2[i].getPath().getLength()>1) {
	            poly2[i].getPath().removeAt(poly2[i].getPath().getLength()-1)
	        }
	            poly2[i].getPath().insertAt(poly2[i].getPath().getLength(),polyline[i].GetPointAtDistance(d));
	    } else {
	        poly2[i].getPath().insertAt(poly2[i].getPath().getLength(),endLocation[i].latlng);
	    }
	 }
	//----------------------------------------------------------------------------

	function animate(index,d) {
		console.log("animate your brain brotha");

	   if (d>eol[index]) {

	      marker[index].setPosition(endLocation[index].latlng);
	      return;
	   }
	    var p = polyline[index].GetPointAtDistance(d);

	    //map.panTo(p);
	    marker[index].setPosition(p);
	    updatePoly(index,d);
	    timerHandle[index] = setTimeout("animate("+index+","+(d+step)+")", tick);
	}

	//-------------------------------------------------------------------------

	function startAnimation(index) {
		console.log("startAnimation");

	        if (timerHandle[index]) clearTimeout(timerHandle[index]);
	        console.log("PolyLine Problem:", index);
	        eol[index]=polyline[index].Distance();
	        map.setCenter(polyline[index].getPath().getAt(0));

	        poly2[index] = new google.maps.Polyline({path: [polyline[index].getPath().getAt(0)], strokeColor:"#FFFF00", strokeWeight:3});

	        setTimeout("animate("+index+",50)",2000);  // Allow time for the initial map display
	}  




// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);

   

})
	$(window).resize(function() {
        google.maps.event.trigger(map, 'resize');
})