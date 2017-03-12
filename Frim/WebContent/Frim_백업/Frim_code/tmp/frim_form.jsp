<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>파일 업로드 폼</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Bootstrap, Components </title>

    
    <link href="css/bootstrap.css" rel="stylesheet">
    
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
	   
	   var region = "seoul"; 
	   $("#test").val(region);
	   
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
 </head>
<body>

<div class="container">   
	   <div class="row">
			<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
				사진 업로드
			</button>
	   </div>
	</div>
	<!-- modal -->
	<!-- data-backdrop="static" : 배경을 클릭했을 때 모달창이 닫히지 않도록 설정 -->
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
					    <input type = "hidden" id = "test" name = "action">				   
					    <input type="submit" value="전송">
					</form>		
				</div>			
			</div>			
		</div>		
	</div>
 
<div id = "img_view"> </div>


</body>
</html>