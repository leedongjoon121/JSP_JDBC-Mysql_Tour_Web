<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, Frimdata.*" %>
 <%@ page import="java.sql.*"%>
 <%@ page import="javax.servlet.ServletContext"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Simple markers</title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 50%;
      }
    </style>
    
    
    
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDWRu7DlgCZh6KSsu5griPDWqx0UvL_eqA&callback=initMap"></script>  
   <script src="//code.jquery.com/jquery.min.js"></script>
    
    <script type = "text/javascript">
        var map;
        var start_spot = {lat: 37.498138, lng: 127.027610};
        var infowindow;
         
    $(document).ready(function(){
    	
        $('#btn1').on("click",function(){
        	
           var $search_name = $(".name");  // db 데이터 array 
           var $search_name_lat = $(".name_lat");
           var $search_name_lng = $(".name_lng");
           var $search_Food = $(".Food");
           var $search_Food_lat = $(".Food_lat");
           var $search_Food_lng = $(".Food_lng");
           var $search_Hotel = $(".Hotel");
           var $search_Hotel_lat = $(".Hotel_lat");
           var $search_Hotel_lng = $(".Hotel_lng");
           var $search_Scenery = $(".Scenery");
           var $search_Scenery_lat = $(".Scenery_lat");
           var $search_Scenery_lng = $(".Scenery_lng");
      
           var data = $('#search_region').val();
              
           for(var i = 0; i<$search_name.length; i++){
        	   if(data==$search_name[i].innerHTML){
        		   var $name = $search_name[i].innerHTML;
        		   
        		   var $name_lat = $search_name_lat[i].innerHTML; 
                   var $name_lng =  $search_name_lng[i].innerHTML;
                   var $Food =  $search_Food[i].innerHTML;
                   var $Food_lat =  $search_Food_lat[i].innerHTML;
                   var $Food_lng =  $search_Food_lng[i].innerHTML;
                   var $Hotel =  $search_Hotel[i].innerHTML; 
                   var $Hotel_lat =  $search_Hotel_lat[i].innerHTML; 
                   var $Hotel_lng =  $search_Hotel_lng[i].innerHTML; 
                   var $Scenery =  $search_Scenery[i].innerHTML; 
                   var $Scenery_lat =  $search_Scenery_lat[i].innerHTML; 
                   var $Scenery_lng =  $search_Scenery_lng[i].innerHTML; 
        		   
        	   }
           }
                  
           var start_spot2 = {lat: parseInt($name_lat), lng: parseInt($name_lng)};
          
           map = new google.maps.Map(document.getElementById('map'), {
       	    zoom: 15,
       	    center: start_spot2
       	  });
        
          placeMarker2($name,$name_lat,$name_lng);
          placeMarker2($Food,$Food_lat,$Food_lng);
         placeMarker2($Hotel,$Hotel_lat,$Hotel_lng);
         placeMarker2($Scenery,$Scenery_lat,$Scenery_lng);
                
       });
       });
    </script>
    <script>


function initMap()  { 
  
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: start_spot
  });
	
  var contentString = '<div id="content">'+
  '<div id="siteNotice">'+
  '</div>'+
  '<h1>이곳은 방문지역!!</h1>'+
  '<div>'+
  '<p><b>xx역</b> 샘플데이터 추가할 공간</b> ' +
  '.</p>'+
  '</div>'+
  '</div>';
      infowindow  = new google.maps.InfoWindow({
      	content: contentString,
      	maxWidth: 200
      	});

  var marker = new google.maps.Marker({
    position: start_spot,
    map: map,
    title: '강남역'
  });
  marker.addListener('click', function() {

   	 infowindow.open(map, marker);
  });
}


function placeMarker2(name,lat,lng)
{ 
	console.log("이곳은 placeMarker2 구간 입니다. ");
	console.log("name : "+name);
	console.log("lat : "+lat);
	console.log("lng : "+lng);
	
var infomation = new google.maps.LatLng(lat,lng);  
console.log("infomation : " + infomation);
var mapOptions = {
			  zoom: 15,
			  center: infomation
			  
			}   


var marker = new google.maps.Marker({      
   position: infomation,     
   title : name
   
   });
//map.setCenter(newCenter:LatLng)  
marker.setMap(map);
var contentString = '<div id="content">'+
'<div id="siteNotice">'+
'</div>'+
'<h1>이곳은 방문지역!!</h1>'+
'<div>'+
'<p><b>xx역</b> 샘플데이터 추가할 공간</b> ' +
'.</p>'+
'</div>'+
'</div>';

infowindow  = new google.maps.InfoWindow({
  	content: contentString,
  	maxWidth: 200
  	});
marker.addListener('click', function() {
infowindow.open(map, marker);
});
map.setCenter(infomation);
}
    </script>


 <jsp:useBean id="datas" scope="request" class="java.util.ArrayList" /> 
     
  </head>
  
  <body>
    <div>
      <center>
        Frim 프로젝트!! 꼭 성공하자!
      </center>
    </div>
    <div id="map"></div>
    <div>
       <input type = "text" id = "search_region"/>
       <button id = "btn1">조회</button>
       <button id = "btn2">강남역</button>
    </div>
     <div> 
            이미지 업로드
        <input type = "file" value="사진"/>
        <div id = "picture"></div>
     </div>
  
      
     <div>
       <form>
      <table border="1" >
      
         <%
            for(FrimDO2  frim : (ArrayList<FrimDO2>)datas) {
         %>
           <tr>
            
            <td align = "center" class="name"><%=frim.getName() %></td>
            <td align = "center" class="name_lat"><%=frim.getName_lat() %></td>
            <td align = "center" class="name_lng"><%=frim.getName_lng() %></td>
            <td align = "center" class="Food"><%=frim.getFood() %></td>
            <td align = "center" class="Food_lat"><%=frim.getFood_lat() %></td>
            <td align = "center" class="Food_lng"><%=frim.getFood_lng() %></td>
            <td align = "center" class="Hotel"><%=frim.getHotel() %></td>
            <td align = "center" class="Hotel_lat"><%=frim.getHotel_lat() %></td>
            <td align = "center" class="Hotel_lng"><%=frim.getHotel_lng() %></td>
            <td align = "center" class="Scenery"><%=frim.getScenery() %></td>
            <td align = "center" class="Scenery_lat"><%=frim.getScenery_lat() %></td>
            <td align = "center" class="Scenery_lng"><%=frim.getScenery_lng() %></td>
           </tr>
          <%
            }
          %>
      </table>
		</form>
     </div>
    
  
   
  </body>
</html>