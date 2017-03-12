/**
 * @author tlagh
 */
function initMap() {
  var map = new google.maps.Map(document.getElementById('mapshow'), {
    zoom: 15,
    center: {lat: 37.498138, lng: 127.027610}
    
  });
  
  var geocoder = new google.maps.Geocoder();

  document.getElementById('searchbtn').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('city').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
       
      });
      switch(address) {
      	case '강남' :
      	
      	
      	
      var marker1 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.498138','127.027610'),
        title: '서울 음식점' 
      });
      var content1 = "서울 맛집  <br/> 맛집내용입력";
       var infowindow1 = new google.maps.InfoWindow({ content: content1});
        google.maps.event.addListener(marker1, "click", function() {
            infowindow1.open(map,marker1);
        });
        
        var marker2 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.498978','127.028567'),
        title: '서울 숙박' 
      });
      var content2 = "서울  숙박 <br/> 숙박내용입력";
       var infowindow2 = new google.maps.InfoWindow({ content: content2});
        google.maps.event.addListener(marker2, "click", function() {
            infowindow2.open(map,marker2);
        });
        var marker3 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.497892','127.026520'),
        title: '서울 관광지' 
      });
      var content3 = "서울 관광지  <br/> 서울 관광지 입력";
       var infowindow3 = new google.maps.InfoWindow({ content: content3});
        google.maps.event.addListener(marker3, "click", function() {
            infowindow3.open(map,marker3);
        });
        
      	break;
      	
      	case '수원' :
      	
      	var marker4 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.266833','127.002370'),
        title: '수원 음식점' 
      });
      var content4 = "수원 맛집  <br/> 맛집내용입력";
       var infowindow4 = new google.maps.InfoWindow({ content: content4});
        google.maps.event.addListener(marker4, "click", function() {
            infowindow4.open(map,marker1);
        });
        
        var marker5 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.267762','127.003089'),
        title: '수원 숙박' 
      });
      var content5 = "수원  숙박 <br/> 숙박 내용입력";
       var infowindow5 = new google.maps.InfoWindow({ content: content5});
        google.maps.event.addListener(marker5, "click", function() {
            infowindow5.open(map,marker5);
        });
        var marker6 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.274777','127.011783'),
        title: '수원 관광지' 
      });
      var content6 = "수원 관광지  <br/> 수원 관광지 입력";
       var infowindow6 = new google.maps.InfoWindow({ content: content6});
        google.maps.event.addListener(marker6, "click", function() {
            infowindow6.open(map,marker6);
        });

      	break;
      	
      	case '순천' :
      	
      	var marker7 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('34.949777','127.486277'),
        title: '순천 음식점' 
      });
      var content7 = "순천 맛집  <br/> 맛집내용입력";
       var infowindow7 = new google.maps.InfoWindow({ content: content7});
        google.maps.event.addListener(marker7, "click", function() {
            infowindow7.open(map,marker7);
        });
        
        var marker8 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('34.951280','127.488165'),
        title: '순천 숙박' 
      });
      var content8 = "순천  숙박 <br/> 숙박내용입력";
       var infowindow8 = new google.maps.InfoWindow({ content: content8});
        google.maps.event.addListener(marker8, "click", function() {
            infowindow8.open(map,marker8);
        });
        var marker9 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('34.952073','127.493944'),
        title: '순천 관광지' 
      });
      var content9 = "순천 관광지  <br/> 관광지 입력";
       var infowindow9 = new google.maps.InfoWindow({ content: content9});
        google.maps.event.addListener(marker9, "click", function() {
            infowindow9.open(map,marker9);
        });

      	break;
      }
      
      
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
