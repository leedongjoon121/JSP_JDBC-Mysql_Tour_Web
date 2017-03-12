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
        position: new google.maps.LatLng('37.516087', '127.040637'),
        title: '강남 추천 음식점' 
      });
      var content1 = "강남 맛집  <br/> 강남구청역 기사식당 <br/> 02-711-4232";
       var infowindow1 = new google.maps.InfoWindow({ content: content1});
        google.maps.event.addListener(marker1, "click", function() {
            infowindow1.open(map,marker1);
        });
        
        var marker2 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.517568', '127.039232'),
        title: '강남 추천 호텔' 
      });
      var content2 = "강남 호텔 <br/> 람다 호텔 <br/> 02-732-0000";
       var infowindow2 = new google.maps.InfoWindow({ content: content2});
        google.maps.event.addListener(marker2, "click", function() {
            infowindow2.open(map,marker2);
        });
        var marker3 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.518482', '127.044322'),
        title: '강남 관광지' 
      });
      var content3 = "강남 관광지  <br/> 강남역 맛집, 쇼핑거리 <br/> 강남역 9번출구";
       var infowindow3 = new google.maps.InfoWindow({ content: content3});
        google.maps.event.addListener(marker3, "click", function() {
            infowindow3.open(map,marker3);
        });
        
         break;
         
         case '수원' :
         
         var marker4 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.264944', '127.027877'),
        title: '수원 음식점' 
      });
      var content4 = "수원 맛집  <br/> 후쿠오카 함박스테이크 <br/> 031-722-3923";
       var infowindow4 = new google.maps.InfoWindow({ content: content4});
        google.maps.event.addListener(marker4, "click", function() {
            infowindow4.open(map,marker1);
        });
        
        var marker5 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.267542', '127.021317'),
        title: '수원 호텔' 
      });
      var content5 = "수원  호텔 <br/> 노보텔 호텔 <br/>031 -712-4123  ";
       var infowindow5 = new google.maps.InfoWindow({ content: content5});
        google.maps.event.addListener(marker5, "click", function() {
            infowindow5.open(map,marker5);
        });
        var marker6 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('37.280512', '127.011361'),
        title: '수원 관광지' 
      });
      var content6 = "수원 관광지  <br/> 수원 화성 <br/> 팔달산로";
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
      var content7 = "순천 맛집  <br/> 가정식 백반 <br/> 061-722-1923";
       var infowindow7 = new google.maps.InfoWindow({ content: content7});
        google.maps.event.addListener(marker7, "click", function() {
            infowindow7.open(map,marker7);
        });
        
        var marker8 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('34.951280','127.488165'),
        title: '순천 호텔' 
      });
      var content8 = "순천  호텔 <br/> 에코그라드호텔 <br/> 061-726-8239";
       var infowindow8 = new google.maps.InfoWindow({ content: content8});
        google.maps.event.addListener(marker8, "click", function() {
            infowindow8.open(map,marker8);
        });
        var marker9 = new google.maps.Marker({
        map: resultsMap,
        position: new google.maps.LatLng('34.952073','127.493944'),
        title: '순천 관광지' 
      });
      var content9 = "순천 관광지  <br/> 죽도봉 <br/> 죽도봉길123  ";
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