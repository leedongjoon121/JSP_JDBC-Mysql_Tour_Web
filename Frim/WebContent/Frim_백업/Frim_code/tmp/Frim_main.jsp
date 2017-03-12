<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, Frimdata.*" %>
 <%@ page import="java.sql.*"%>
 <%@ page import="javax.servlet.ServletContext"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
   <!-- ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  탬플릿 부분 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agency - Start Bootstrap Theme</title>

	<link href="css/bootstrap.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!-- Theme CSS -->
    <link href="css/agency.min.css" rel="stylesheet">
  
   <!--  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★   탬플릿 부분  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->
   
   
   
  <!-- ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  구글맵 부분 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->
  
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
    	
    	$('#DB_table').hide();
    	
    	
        $('#btn1').on("click",function(){
        	
           var $search_name = $(".name");  // db 데이터 array 
           var $search_name_lat = $(".name_lat");
           var $search_name_lng = $(".name_lng");
           var $search_name_text = $(".name_text");
           
           var $search_Food = $(".Food");
           var $search_Food_lat = $(".Food_lat");
           var $search_Food_lng = $(".Food_lng");
           var $search_Food_text = $(".Food_text");
           
           var $search_Hotel = $(".Hotel");
           var $search_Hotel_lat = $(".Hotel_lat");
           var $search_Hotel_lng = $(".Hotel_lng");
           var $search_Hotel_text = $(".Hotel_text");
           
           var $search_Scenery = $(".Scenery");
           var $search_Scenery_lat = $(".Scenery_lat");
           var $search_Scenery_lng = $(".Scenery_lng");
           var $search_Scenery_text = $(".Scenery_text");
      
           console.log("역 text object : " + $search_name_text);
           console.log("음식 text object : " + $search_Food_text);
           console.log("호텔 text object : " + $search_Hotel_text);
           console.log("관광지  text object : " + $search_Scenery_text);
           
           var data = $('#search_region').val();
              
           for(var i = 0; i<$search_name.length; i++){
        	   if(data==$search_name[i].innerHTML){
        		   var $name = $search_name[i].innerHTML;
        		   
        		   var $name_lat = $search_name_lat[i].innerHTML; 
                   var $name_lng =  $search_name_lng[i].innerHTML;
                   var $name_text =  $search_name_text[i].innerHTML;
                   
                   var $Food =  $search_Food[i].innerHTML;
                   var $Food_lat =  $search_Food_lat[i].innerHTML;
                   var $Food_lng =  $search_Food_lng[i].innerHTML;
                   var $Food_text =  $search_Food_text[i].innerHTML;
                   
                   var $Hotel =  $search_Hotel[i].innerHTML; 
                   var $Hotel_lat =  $search_Hotel_lat[i].innerHTML; 
                   var $Hotel_lng =  $search_Hotel_lng[i].innerHTML;
                   var $Hotel_text =  $search_Hotel_text[i].innerHTML;
                   
                   var $Scenery =  $search_Scenery[i].innerHTML; 
                   var $Scenery_lat =  $search_Scenery_lat[i].innerHTML; 
                   var $Scenery_lng =  $search_Scenery_lng[i].innerHTML;
                   var $Scenery_text =  $search_Scenery_text[i].innerHTML;
                   
                   
               
        		   
        	   }
           }
        
           var $TableData = [$name,$Food,$Hotel,$Scenery];
           console.log("$TableData 확인");
           console.log($TableData[0]);
           console.log($TableData[1]);
           console.log($TableData[2]);
           console.log($TableData[3]);
           
           var start_spot2 = {lat: parseInt($name_lat), lng: parseInt($name_lng)};
          
           map = new google.maps.Map(document.getElementById('map'), {
       	    zoom: 15,
       	    center: start_spot2
       	  });
        
          placeMarker2($name,$name_lat,$name_lng,$name_text);
          placeMarker2($Food,$Food_lat,$Food_lng,$Food_text);
         placeMarker2($Hotel,$Hotel_lat,$Hotel_lng,$Hotel_text);
         placeMarker2($Scenery,$Scenery_lat,$Scenery_lng,$Scenery_text);
         
       //  $('#DB_table').show();
         
         
         
       });
       });
    </script>
    <script>


function initMap()  { 
  
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: start_spot
  });

   infowindow  = new google.maps.InfoWindow({
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


function placeMarker2(name,lat,lng,text)
{ 
	
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
  
marker.setMap(map);

//var contentString = '<h2>이곳은 방문지역!!</h2>'


infowindow  = new google.maps.InfoWindow({
  	content: text,
  	maxWidth: 250
  	});
infowindow.open(map, marker);
console.log("text 찍습니다." +text);

//marker.addListener('click', function() {
// console.log("마커 정보 확인 : "+infomation.lat+infomation.lng);
 //infowindow.open(map, marker);

//});

map.setCenter(infomation);

}


    </script>


 <jsp:useBean id="datas" scope="request" class="java.util.ArrayList" /> 
     
<!-- ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★ 구글맵 부분 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->     


<!-- ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  사진 업로드 부분 ☆★☆★☆★☆★☆★☆★☆★☆★ -->

<!-- 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    
    <script src="js/jquery-3.1.1.min.js"></script>
    
    <script src="js/bootstrap.js"></script>
    
    <style>
    	body > div {border: 1px solid gray;}
    	ul {list-style: none;}
    </style>
    <script>
    	$(document).ready(function() {
    		$("#btnShow").click(function() {
    			$("#myModal-2").modal("show");
    		});
    		$("#btnHide").click(function() {
    			$("#myModal-2").modal("hide");
    		});
    	});
    </script>

<script src="//code.jquery.com/jquery.min.js"></script>

 <style>
div #img_view{width:200px ; height:200px}
div #img_text{width:200px ; height:200px}
</style>
<script>
	function requestImg(view,item)
	{
		$.ajax({
			url : item.val(),
			success:function(){
				console.log("잇는파일");
				view.append("<img src='"+item.val()+"'/>")
			
			},
			error:function(){
				console.log("없어안돼 저리가");
				requestImg(view,item);
			}
		});
	}
	
   $(document).ready(function(){
	   
	 var view =  $('#img_view');
	 $.ajax({
		 url:"frim_addrlist.jsp",
		 datatype:"html",
		 success:function(data){
			view.html(data);
			console.log(data);
			$.each($("input"),function(index,item){
				var $item = $(item);
				var flag = true;
				requestImg(view,$item);			
			});
		 }
	 });
   });
 </script>
 
  -->
<!--  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  사진 업로드 부분 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->
     
     
  </head>
  
  <body id="page-top" class="index">

   <!--  탬플릿 부분 -->
   
     <!-- Navigation -->
     
     <!-- 
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
          
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">FRIM</a>
            </div>

          
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
           
        </div>
        
    </nav>

    
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">FRIENDLY REAL INFOMATION MAP</div>
                <div class="intro-heading">ENJOY FRIM</div>
                <a href="#carousel-generic" class="page-scroll btn btn-xl">시작하기</a>
            </div>
        </div>
    </header>
    
    
    <div id="introduce">
    	
    	
    </div>
 
    <div id="carousel-generic" class="carousel slide" >
     
       
       
       <div class="carousel-inner">
          <div class="item active">
             <img src="img/2.png" alt="First slide">
          </div>
          <div class="item">
             <img src="img/3.png" alt="Second slide">              
          </div>
          <div class="item">
             <img src="img/4.png" alt="Third slide">               
          </div>
          
                                 
       </div>
       
      
        <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
         
        </a>
        <a class="right carousel-control" href="#carousel-generic" data-slide="next">
        
        </a>
      </div>
  -->
  
    <div id="map"> </div>
    
    <div>
       <input type = "text" id = "search_region"/>
       <button id = "btn1">조회</button>
       
    </div>
    

    
     <div> 
            이미지 업로드
        <input type = "file" value="사진"/>
        <div id = "picture"></div>
     </div>    
      
     <div id = "DB_table">
       <form>
      <table border="1"  style="display:none;">
      
         <%
            for(FrimDO2  frim : (ArrayList<FrimDO2>)datas) {
         %>
           <tr >
            
            <td align = "center" class="name"><%=frim.getName() %></td>
            <td align = "center" class="name_lat" style="display:none;"><%=frim.getName_lat() %></td>
            <td align = "center" class="name_lng" style="display:none;"><%=frim.getName_lng() %></td>
            <td align = "center" class="name_text" style="display:none;"><%=frim.getName_text() %></td>
            
            
            <td align = "center" class="Food"><%=frim.getFood() %></td>
            <td align = "center" class="Food_lat" style="display:none;"><%=frim.getFood_lat() %></td>
            <td align = "center" class="Food_lng" style="display:none;"><%=frim.getFood_lng() %></td>
            <td align = "center" class="Food_text" style="display:none;"><%=frim.getFood_text() %></td>
            
            
            <td align = "center" class="Hotel"><%=frim.getHotel() %></td>
            <td align = "center" class="Hotel_lat" style="display:none;"><%=frim.getHotel_lat() %></td>
            <td align = "center" class="Hotel_lng" style="display:none;"><%=frim.getHotel_lng() %></td>
            <td align = "center" class="Hotel_text" style="display:none;"><%=frim.getHotel_text() %></td>
            
            
            <td align = "center" class="Scenery"><%=frim.getScenery() %></td>
            <td align = "center" class="Scenery_lat" style="display:none;"><%=frim.getScenery_lat() %></td>
            <td align = "center" class="Scenery_lng" style="display:none;"><%=frim.getScenery_lng() %></td>
            <td align = "center" class="Scenery_text" style="display:none;"><%=frim.getScenery_text() %></td>
            
           </tr>
          <%
            }
          %>
      </table>
		</form>
     </div>    
  
  <!--  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  이미지 업로드 부분  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->
  
  <!-- 
  <div class="container">   
	   <div class="row">
			<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
				사진 업로드
			</button>
	   </div>
	</div>
	<div class="modal fade" id="myModal" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					Modal header
					<button class="close" data-dismiss="modal">&times;</button>					
				</div>
				<div class="modal-body">
					Modal body<p>
					자료를 저장하세요.	
					<form name="fileForm" id="fileForm" method="POST" action="frim_upload_img.jsp" enctype="multipart/form-data">
					    <input type="file" name="uploadFile" id="uploadFile"> 					   
					    <input type="submit" value="전송">
					</form>		
				</div>			
			</div>			
		</div>		
	</div>
 
<div id = "img_view"> </div>
 
 -->
<!-- ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★   이미지 업로드 부분 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★  -->


     
    <!-- 
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Services</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">E-Commerce</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Responsive Design</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Web Security</h4>
                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
            </div>
        </div>
    </section>
 
 
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Portfolio</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/roundicons.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Round Icons</h4>
                        <p class="text-muted">Graphic Design</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/startup-framework.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Startup Framework</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/treehouse.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Treehouse</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/golden.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Golden</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/escape.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Escape</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/dreams.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Dreams</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

 
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2009-2011</h4>
                                    <h4 class="subheading">Our Humble Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>March 2011</h4>
                                    <h4 class="subheading">An Agency is Born</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>December 2012</h4>
                                    <h4 class="subheading">Transition to Full Service</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/4.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>July 2014</h4>
                                    <h4 class="subheading">Phase Two Expansion</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                                    <br>Of Our
                                    <br>Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

 
    <section id="team" class="bg-light-gray">
        
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img src="img/team/sim.png" class="img-responsive img-circle" alt="">
                        <h4>SIM HWAN GI</h4>
                        <p class="text-muted">개발자</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="https://www.instagram.com/faaaang_gi/"> <i class="fa fa-instagram" ></i></a>
                            </li>
                            <li><a href="https://www.facebook.com/hwangi.sim"> <i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img src="img/team/lee.png" class="img-responsive img-circle" alt="">
                        <h4>LEE DONG JUN</h4>
                        <p class="text-muted">개발자</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="https://www.instagram.com/dj_33412/"> <i class="fa fa-instagram "></i></a>
                            </li>
                            <li><a href="https://www.facebook.com/dongjoon.lee.54?fref=ts"> <i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
               
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>
        </div>
    </section>

 
    <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>

 
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

     <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                               
                                <h2>Project Name</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/roundicons-free.png" alt="">
                                <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                <p>
                                    <strong>Want these icons in this portfolio item sample?</strong>You can download 60 of them for free, courtesy of <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">RoundIcons.com</a>, or you can purchase the 1500 icon set <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">here</a>.</p>
                                <ul class="list-inline">
                                    <li>Date: July 2014</li>
                                    <li>Client: Round Icons</li>
                                    <li>Category: Graphic Design</li>
                                </ul>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                                <h2>Project Heading</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/startup-framework-preview.png" alt="">
                                <p><a href="http://designmodo.com/startup/?u=787">Startup Framework</a> is a website builder for professionals. Startup Framework contains components and complex blocks (PSD+HTML Bootstrap themes and templates) which can easily be integrated into almost any design. All of these components are made in the same style, and can easily be integrated into projects, allowing you to create hundreds of solutions for your future projects.</p>
                                <p>You can preview Startup Framework <a href="http://designmodo.com/startup/?u=787">here</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                                
                                <h2>Project Name</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/treehouse-preview.png" alt="">
                                <p>Treehouse is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. This is bright and spacious design perfect for people or startup companies looking to showcase their apps or other projects.</p>
                                <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/treehouse-free-psd-web-template/">FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                                
                                <h2>Project Name</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/golden-preview.png" alt="">
                                <p>Start Bootstrap's Agency theme is based on Golden, a free PSD website template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Golden is a modern and clean one page web template that was made exclusively for Best PSD Freebies. This template has a great portfolio, timeline, and meet your team sections that can be easily modified to fit your needs.</p>
                                <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/golden-free-one-page-web-template/">FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                              
                                <h2>Project Name</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/escape-preview.png" alt="">
                                <p>Escape is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Escape is a one page web template that was designed with agencies in mind. This template is ideal for those looking for a simple one page solution to describe your business and offer your services.</p>
                                <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/escape-one-page-psd-web-template/">FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="modal-body">
                               
                                <h2>Project Name</h2>
                                <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                <img class="img-responsive img-centered" src="img/portfolio/dreams-preview.png" alt="">
                                <p>Dreams is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Dreams is a modern one page web template designed for almost any purpose. It’s a beautiful template that’s designed with the Bootstrap framework in mind.</p>
                                <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/dreams-free-one-page-web-template/">FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <script src="vendor/jquery/jquery.min.js"></script>

    
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    
    <script src="js/agency.min.js"></script>
    
    <script>
    
      	$('.carousel').carousel();
      	
      	$('.carousel2').carousel({interval: 500 }); 
      	
	  
    </script>
   
   -->
   
   
   
  </body>
</html>