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
					
					
					$.ajax({
		     			 url:"seoulmodal.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		      				
		   	  		 	 var modalList = "";
		      			 $.each(data.modal, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     modalList += '<div class="portfolio-modal modal fade" id="portfolioModal' + this.no + '" tabindex="-1" role="dialog" aria-hidden="true">' +
        '<div class="modal-dialog">'+
            '<div class="modal-content">'+

                '<div class="close-modal" data-dismiss="modal">'+
                    '<div class="lr">'+
                        '<div class="rl">'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="container">'+

                    '<div class="row">'+

                        '<div class="col-lg-8 col-lg-offset-2">'+
                            '<div class="modal-body">'+
                                
                                
                                '<h2>' + this.title + '</h2>'+
                                '<p class="item-intro text-muted">' + this.comment + '</p>' +
                                '<img class="img-responsive img-centered" src="' + this.img + '" alt="">'+
                                '<p>' + this.content + '</p>' +
                                '<p>'+
                                 
                                '<button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 닫기</button>'+
                            '</div>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
            '</div>'+
        '</div>'+
    '</div>';
		       			  });
		 					$('#modalset').empty();				
							$('#modalset').append(modalList);
							$('#modalset').show();
		   					   }
							   }); 
							   
							   
							   
							break;
						
						case "순천" :
						
						
						 $.ajax({
		     			 url:"suncheonvideo.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		      				console.log("순천 비디오 데이터 받아옴");
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
		      				console.log("순천 이미지 데이터 받아옴");
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
					
					$.ajax({
		     			 url:"suncheonmodal.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		      				console.log("순천 모델 데이터 받아옴");
		   	  		 	 var modalList = "";
		      			 $.each(data.modal, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     modalList += '<div class="portfolio-modal modal fade" id="portfolioModal' + this.no + '" tabindex="-1" role="dialog" aria-hidden="true">' +
        '<div class="modal-dialog">'+
            '<div class="modal-content">'+

                '<div class="close-modal" data-dismiss="modal">'+
                    '<div class="lr">'+
                        '<div class="rl">'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="container">'+

                    '<div class="row">'+

                        '<div class="col-lg-8 col-lg-offset-2">'+
                            '<div class="modal-body">'+
                                
                                
                                '<h2>' + this.title + '</h2>'+
                                '<p class="item-intro text-muted">' + this.comment + '</p>' +
                                '<img class="img-responsive img-centered" src="' + this.img + '" alt="">'+
                                '<p>' + this.content + '</p>' +
                                '<p>'+
                                 
                                '<button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 닫기</button>'+
                            '</div>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
            '</div>'+
        '</div>'+
    '</div>';
		       			  });
		 					$('#modalset').empty();				
							$('#modalset').append(modalList);
							$('#modalset').show();
		   					   }
							   }); 
							   
							break;
							case '수원' :
							
							$.ajax({
		     			 url:"suwonmodal.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		      				console.log("수원 모델 데이터 받아옴1");
		   	  		 	 var modalList = "";
		      			 $.each(data.modal, function(i,data){         	
		             //일반적인 문자열 결합 방법
			    	     modalList += '<div class="portfolio-modal modal fade" id="portfolioModal' + this.no + '" tabindex="-1" role="dialog" aria-hidden="true">' +
        '<div class="modal-dialog">'+
            '<div class="modal-content">'+

                '<div class="close-modal" data-dismiss="modal">'+
                    '<div class="lr">'+
                        '<div class="rl">'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="container">'+

                    '<div class="row">'+

                        '<div class="col-lg-8 col-lg-offset-2">'+
                            '<div class="modal-body">'+
                                
                                
                                '<h2>' + this.title + '</h2>'+
                                '<p class="item-intro text-muted">' + this.comment + '</p>' +
                                '<img class="img-responsive img-centered" src="' + this.img + '" alt="">'+
                                '<p>' + this.content + '</p>' +
                                '<p>'+
                                 
                                '<button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 닫기</button>'+
                            '</div>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
            '</div>'+
        '</div>'+
    '</div>';
		       			  });
		 					$('#modalset').empty();				
							$('#modalset').append(modalList);
							$('#modalset').show();
		   					   }
							   }); 
							   
							   
					     $.ajax({
		     			 url:"suwonvideo.json", //데이터를 요청할 URL 주소
		      			dataType:"json", //데이터 타입 설정
		      			success:function(data){ //데이터 성공적으로 요청되었을 때...
		      				console.log("수원 비디오 데이터 받아옴");
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
