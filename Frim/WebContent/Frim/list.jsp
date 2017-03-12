<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*, Frimdata.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>
<!DOCTYPE HTML>

<link href="css/agency.css" rel="stylesheet">
<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:목록화면</title>
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>


<script type="text/javascript">

   

	function delcheck() {
		
		//var id = $('#id_num').val();

		result = confirm("정말로 삭제하시겠습니까 ?");
	
		if(result == true){
			document.form1.action.value="delete"; //    form1이 뭐??
			//document.location.href="list_control.jsp?action=list&id="+ab_id;
			//document.form1.id.value=id;
			document.form1.submit();
		}
		else
			return;
	}
  
   
</script>


<script>
	function requestImg(view,item)
	{
		$.ajax({
			url : item.attr("src"),
			success:function(){
				console.log("잇는파일");
				item.attr("src",item.attr("src"));
			
			},
			error:function(){
				console.log("없어안돼 저리가");
				requestImg(view,item);
			}
		});
	}
	
   $(document).ready(function(){
	      
			$.each($(".imgs"),function(index,item){
				var $item = $(item);
				$.ajax({
					url : $(item).attr("src"),
					success:function(){
					
					},
					error:function(){
						console.log("없어안돼 저리가");
						requestImg(view,$item);
					}
				});			
			
	 });
   });
   
  
 </script>


</head>
<jsp:useBean id="frimdo" scope="request" class="Frimdata.FrimDO3" />
   <jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />  

<body>
<div align="center"> 
<H2>데이터 확인</H2>

<HR>

<div class="container">
<div class="table-responsive">   
<div id = "view">
<!--   <form name=form1 method=post action=control.jsp> -->


      <table class="table"  style="margin: auto; text-align: center;">
         <tr><th style="text-align: center">번호</th><th style="text-align: center">이 름</th><th style="text-align: center">메 모</th><th style="text-align: center">사진</th><th style="text-align: center">삭제</th></tr>
         <%
            
            for(FrimDO3  frim : (ArrayList<FrimDO3>)datas) {
            
         %>
      
           <tr>
            <td><%=frim.getId() %></td>
            <td><%=frim.getName() %></td>
            <td><%=frim.getMemo() %></td>
            <td width = "300" height = "100" align = "center"><img class="imgs" src="http://localhost:8080/Frim/img/<%=frim.getImg()%>"/></td>
            <td>
            <form id="form1" name=form1 method="get" action="list_control.jsp">
            <input type=hidden name="action" value="delete">
            <input type=hidden name="id"  value="<%=frim.getId()%>">
            <input  class="btn btn-primary" type="submit"  value="삭제" >
            </form>
            </td>
           </tr>
          
          <%
            }
          %>
      </table>
</div>
</div>

<div class="form-inline">
<div class="form-group">     
<form name=form2 method=post  action="form.jsp"> 
   <input class="btn btn-primary" type="submit" value="추가하기">
</form>
</div>

<div class="form-group">     
<form name=form2 method=post  action="index.jsp"> 
   <input class="btn btn-primary" type="submit" value="메인으로 돌아가기">
</form>
</div>
</div>

</div>
</div>

</div>
</body>
</html>