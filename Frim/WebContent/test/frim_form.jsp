<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>파일 업로드 폼</title>


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
 
<form name="fileForm" id="fileForm" method="POST" action="frim_upload_img.jsp" enctype="multipart/form-data">

    <input type="file" name="uploadFile" id="uploadFile"> 
    <input type="submit" value="전송">
</form>

<div id = "img_view">
			
		</div>

</body>
</html>