// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("turbolinks:load", function () {

  $('.panelName1').hide();

	// Welcome Map Events
	$('.js-mapPanel').click( function () {
    function refreshMap () {
      google.maps.event.trigger(map, 'resize');
      // map.fitBounds(bounds);
      // Set center in here
    };
    $('.js-mapPanel').animate({width:'90%', left:'5%'}, refreshMap);
    $('.js-mapPanel').removeClass('closed');
    $('.panelName2').hide();

    initialize();

    if (! $('.js-about').hasClass('closed') ) {
      $('.js-about').animate({width:'5%'});
      $('.js-about').addClass('closed');
      $('.panelName1').show();
    }
		if (! $('.js-previewPanel').hasClass('closed') ) {
			$('.js-previewPanel').animate({width:'5%'});
			$('.js-previewPanel').addClass('closed');
      $('.panelName3').show();
		}
	});
	// $('.js-closeProduct').click( function (e) {
	// 	e.stopPropagation();
	// 	$('.js-product').animate({width:'5%'});
	// 	$('.js-product').addClass('closed');
	// });


	// Welcome About Events
	$('.js-about').click( function () {
		$('.js-about').animate({width:'90%'});
		$('.js-about').removeClass('closed');
    $('.panelName1').hide();
    $('.js-mapPanel').animate({left:'90%'});

    if (! $('.js-mapPanel').hasClass('closed') ) {
      $('.js-mapPanel').animate({width:'5%'});
      $('.js-mapPanel').addClass('closed');
      $('.panelName2').show();
		}
		if (! $('.js-previewPanel').hasClass('closed') ) {
			$('.js-previewPanel').animate({width:'5%'});
			$('.js-previewPanel').addClass('closed');
      $('.panelName3').show();
		}
		if ( $('.js-mapPanel').hasClass('closed') ) {
			$('.js-mapPanel').animate({width:'5%'});
			$('.js-mapPanel').addClass('closed');
      $('.panelName2').show();
      // $('.js-mapPanel').animate({left:'90%'});
		}
	});

	//Welcome previewPanel Product events
	$('.js-previewPanel').click( function () {
		$('.js-previewPanel').animate({width:'90%'});
		$('.js-previewPanel').removeClass('closed');
    $('.panelName3').hide();

		if (! $('.js-mapPanel').hasClass('closed') ) {
			$('.js-mapPanel').animate({width:'5%', left: '5%'});
			$('.js-mapPanel').addClass('closed');
      $('.panelName2').show();
		}
		if (! $('.js-about').hasClass('closed') ) {
			$('.js-about').animate({width:'5%'});
			$('.js-about').addClass('closed');
      $('.panelName1').show();
		}
    if ( $('.js-mapPanel').hasClass('closed') ) {
      $('.js-mapPanel').animate({width:'5%', left: '5%'});
      // $('.js-mapPanel').addClass('closed');
      // $('.panelName2').show();
    }
	});



// --------------------------------------------------

	// Product Events
	$('.js-product').click( function () {
		$('.js-product').animate({width:'90%'});
		$('.js-product').removeClass('closed');

		if (! $('.js-mapOrder').hasClass('closed') ) {
			$('.js-mapOrder').animate({width:'5%'});
			$('.js-mapOrder').addClass('closed');
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
	$('.js-mapOrder').click( function () {
		$('.js-mapOrder').animate({width:'90%'});
		$('.js-mapOrder').removeClass('closed');

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
		if (! $('.js-mapOrder').hasClass('closed') ) {
			$('.js-mapOrder').animate({width:'5%'});
			$('.js-mapOrder').addClass('closed');
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
  var bounds;
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
  var currentDistance = [];
    
  
  var speed = 0.000005, wait = 1;
  var infowindow = null;
  
  var myPano;   
  var panoClient;
  var nextPanoId;
  var timerHandle = [];


  
  var startLoc = new Array();
  startLoc[0] = 'aventura, Miami';
  startLoc[1] = 'kendall, Miami';
  startLoc[2] = 'coconut grove, Miami';
  startLoc[3] = 'brickell, Miami';
  startLoc[4] = 'north Miami, Florida';

  var endLoc = new Array();
  endLoc[0] = 'North Miami, Florida';
  endLoc[1] = 'brickell, Miami';
  endLoc[2] = 'brickell, Miami';
  endLoc[3] = 'south beach, Miami';
  endLoc[4] = 'miami Beach, Florida';


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
      address = 'Miami'
      geocoder = new google.maps.Geocoder();
      geocoder.geocode( { 'address': address}, function(results, status) {
       map.fitBounds(results[0].geometry.viewport);

      }); 
    setRoutes();
    } 


  function createMarker(latlng, label, html) {
    console.log("createMarker");
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
        console.log("Route:",routeNum);
        if (status == google.maps.DirectionsStatus.OK){

          bounds = new google.maps.LatLngBounds();
          var route = response.routes[0];
          startLocation[routeNum] = new Object();
          endLocation[routeNum] = new Object();


          polyline[routeNum] = new google.maps.Polyline({
          path: [],
          strokeColor: '#FFF',
          strokeWeight: 0
          });

          poly2[routeNum] = new google.maps.Polyline({
          path: [],
          strokeColor: '#FFF',
          strokeWeight: 0
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
              marker[routeNum] = createMarker(legs[i].start_location,"start"+routeNum,legs[i].start_address,"green");
            }
            endLocation[routeNum].latlng = legs[i].end_location;
            endLocation[routeNum].address = legs[i].end_address;
            var steps = legs[i].steps;

            for (j=0;j<steps.length;j++) {
              var nextSegment = steps[j].path;                
              var nextSegment = steps[j].path;

              for (k=0;k<nextSegment.length;k++) {
                  polyline[routeNum].getPath().push(nextSegment[k]);
                  bounds.extend(nextSegment[k]);
              }

            }
          }

        }       

           polyline[routeNum].setMap(map);
           startAnimation(routeNum);  

      } // else alert("Directions request failed: "+status);

    }

  }

      var lastVertex = 1;
      var stepnum=0;
      var step = 10; // 5; // metres
      var tick = 100; // milliseconds
      var eol= [];
  //----------------------------------------------------------------------                
   function updatePoly(i,d) {

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

     if (d>eol[index]) {

        marker[index].setPosition(endLocation[index].latlng);
        marker[index].setOptions({zIndex: Math.round(latlng.lat()*-100000)<<5});
        return;
     }
      var p = polyline[index].GetPointAtDistance(d);

      //map.panTo(p);
      marker[index].setPosition(p);
      marker[index].setOptions({zIndex: Math.round(p.lat()*-100000)<<5});
      updatePoly(index,d);
      function start () {
        animate(index, (d+step));
      }
      timerHandle[index] = setTimeout(start, tick);
      currentDistance[index]=d+step;
  }

  //-------------------------------------------------------------------------

  function startAnimation(index) {
    console.log("startAnimation");

          console.log("backtothefuture",timerHandle);
          if (timerHandle[index]) clearTimeout(timerHandle[index]);
          eol[index]=polyline[index].Distance();
          // map.setCenter(polyline[index].getPath().getAt(0));

          poly2[index] = new google.maps.Polyline({path: [polyline[index].getPath().getAt(0)], strokeColor:"#FFF", strokeWeight:0});
          function start () {
            animate(index,50)
          }
          timerHandle[index] = setTimeout(start,2000);  // Allow time for the initial map display
  }  




// Flashing Title but CSS is already doing this 
// 	var flashBaby = $('.title');
	
// 	setInterval(function() {
//    	flashBaby.toggleClass('blinking');
// 	}, 700);

   

})
