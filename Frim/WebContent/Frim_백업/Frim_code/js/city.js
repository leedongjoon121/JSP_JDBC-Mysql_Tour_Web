$(document).ready(function () {
    $("#searchbtn").click(function () {
        var city = $("#city").val();
			
						switch  (city) {			
						
						case "강남" : 
					
						 $.ajax({
		     			 url:"video.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var videoList = "";
		      			 $.each(data.video, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     videoList += '<div class="col-md-6 col-sm-12 col-xs-12 ">'+
									   '<div class="thumbnail" id="">'+
              	  			     '<iframe  width = "550" height="300" src="'+ this.link + '" frameborder="0" allowfullscreen></iframe>'+
               				    '</div>'  +
                  				  '<div class="portfolio-caption">'+
                    			   '<h4>' + this.title + '</h4>'+ 
                    		    '<p class="text-muted">' + this.content + '</p>'+
                			    '</div>'+
            					    '</div>';
		       			  });
		 					$('#videoshow').empty();				
							$('#videoshow').append(videoList);
							$('#videoshow').show();
		   					   }
							   }); 
		   
		   
					     $.ajax({
		     			 url:"img.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var imgList = "";
		      			 $.each(data.img, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     imgList += '<div class="col-md-4 col-sm-6 portfolio-item">'+
                					   '<a href="#portfolioModal' + this.no + '" class="portfolio-link" data-toggle="modal">'+
                     				   '<div class="portfolio-hover">'+
                        			    '<div class="portfolio-hover-content">'+
                        			    '<i class="fa fa-plus fa-3x"></i>'+
                           				 '</div>'+
                      				  '</div>'+
                      				 
                      					  '<img src="'+ this.link +'" class="img-responsive" alt="">'+
                  					  '</a>'+
                    				'<div class="portfolio-caption">'+
                    				   ' <h4>'+ this.title +'</h4>'+
                   				     '<p class="text-muted">'+ this.content + '</p>'+
                 				   '</div>'+
                 				   '</div>';
		      					  });
		 					$('#imgshow').empty();				
							$('#imgshow').append(imgList);
							$('#imgshow').show();
		    					  }
		 						  }); 
					
							break;
						
						case "순천" :
						
						
						 $.ajax({
		     			 url:"suncheonvideo.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var videoList = "";
		      			 $.each(data.video, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     videoList += '<div class="col-md-6 col-sm-12 col-xs-12 ">'+
									   '<div class="thumbnail" id="">'+
              	  			     '<iframe  width = "550" height="300" src="'+ this.link + '" frameborder="0" allowfullscreen></iframe>'+
               				    '</div>'  +
                  				  '<div class="portfolio-caption">'+
                    			   '<h4>' + this.title + '</h4>'+ 
                    		    '<p class="text-muted">' + this.content + '</p>'+
                			    '</div>'+
            					    '</div>';
		       			  });
		 					$('#videoshow').empty();				
							$('#videoshow').append(videoList);
							$('#videoshow').show();
		   					   }
							   }); 
		   
		   
					     $.ajax({
		     			 url:"suncheonimg.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var imgList = "";
		      			 $.each(data.img, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     imgList += '<div class="col-md-4 col-sm-6 portfolio-item">'+
                					   '<a href="#portfolioModal' + this.no + '" class="portfolio-link" data-toggle="modal">'+
                     				   '<div class="portfolio-hover">'+
                        			    '<div class="portfolio-hover-content">'+
                        			    '<i class="fa fa-plus fa-3x"></i>'+
                           				 '</div>'+
                      				  '</div>'+
                      				 
                      					  '<img src="'+ this.link +'" class="img-responsive" alt="">'+
                  					  '</a>'+
                    				'<div class="portfolio-caption">'+
                    				   ' <h4>'+ this.title +'</h4>'+
                   				     '<p class="text-muted">'+ this.content + '</p>'+
                 				   '</div>'+
                 				   '</div>';
		      					  });
		 					$('#imgshow').empty();				
							$('#imgshow').append(imgList);
							$('#imgshow').show();
		    					  }
		 						  }); 
					
					
							break;
							case '수원' :
							
					     $.ajax({
		     			 url:"suwonvideo.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var videoList = "";
		      			 $.each(data.video, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     videoList += '<div class="col-md-6 col-sm-12 col-xs-12 ">'+
									   '<div class="thumbnail" id="">'+
              	  			     '<iframe  width = "550" height="300" src="'+ this.link + '" frameborder="0" allowfullscreen></iframe>'+
               				    '</div>'  +
                  				  '<div class="portfolio-caption">'+
                    			   '<h4>' + this.title + '</h4>'+ 
                    		    '<p class="text-muted">' + this.content + '</p>'+
                			    '</div>'+
            					    '</div>';
		       			  });
		 					$('#videoshow').empty();				
							$('#videoshow').append(videoList);
							$('#videoshow').show();
		   					   }
							   }); 
		   
		   
					     $.ajax({
		     			 url:"suwonimg.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		   	  		 	 var imgList = "";
		      			 $.each(data.img, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     imgList += '<div class="col-md-4 col-sm-6 portfolio-item">'+
                					   '<a href="#portfolioModal' + this.no + '" class="portfolio-link" data-toggle="modal">'+
                     				   '<div class="portfolio-hover">'+
                        			    '<div class="portfolio-hover-content">'+
                        			    '<i class="fa fa-plus fa-3x"></i>'+
                           				 '</div>'+
                      				  '</div>'+
                      				 
                      					  '<img src="'+ this.link +'" class="img-responsive" alt="">'+
                  					  '</a>'+
                    				'<div class="portfolio-caption">'+
                    				   ' <h4>'+ this.title +'</h4>'+
                   				     '<p class="text-muted">'+ this.content + '</p>'+
                 				   '</div>'+
                 				   '</div>';
		      					  });
		 					$('#imgshow').empty();				
							$('#imgshow').append(imgList);
							$('#imgshow').show();
		    					  }
		 						  }); 
					
						}
			
		});
});
