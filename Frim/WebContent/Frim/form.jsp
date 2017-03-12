<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="addrbook_error.jsp" import="Frimdata.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE HTML>

<html>
<head>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="vendor/bootstrap/css/bootstrap.css">
   
</script>

<title>여행 사진 올리기</title>
<jsp:useBean id="frimdao" scope="request" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" scope="request" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 


<style>
   #ddd{padding-left: 30%;}
   #gr1{padding-left: 10%;}
   #gr2{padding-left: 10%;}
</style>
</head>
<body>

<div class="container" >
<h2 style="text-align: center">방문지역 사진 올리기</h2>

<hr>
<div  id = "ddd">
<form id="form1" name=form1 method=post enctype="multipart/form-data" action="control.jsp" >
<input type=hidden name="action" value="insert">
<div class="form-inline">
 		 <div class="form-group">   
              <label for="Name">이름</label>
              <input type="text" name="name" maxlength="100">
          </div>       
          <div class="form-group">  
      
              <label for="emailaddress">메모</label>
              <input type="text" name="memo" maxlength="100"> 
          </div> 
</div>


<div class="form-inline">
          <div class="form-group">  
              <label for="emailaddress">사진</label>
           </div>
           
           <div class="form-group">
              <input type="file" name="img">
          </div>
  </div>
          
         
 <div class="form-inline" id="gr1" >
          <div class ="from-group" >
             
          <input type=submit value="저장" class="btn btn-primary"> 
          
          <input type=reset value="취소" class="btn btn-primary">
          
          </div>
  </div>
          
    <div class="form-inline" id="gr2">
    <div class="form-group">     
         <form name=form2 method=post  action="index.jsp"> 
          <input class="btn btn-primary" type="submit" value="메인으로 돌아가기">
         </form>
         </div>
         
          <div class="form-group">
         <form name=form2 method=post  action="list_control.jsp">
            <input type="hidden" name="action" value="list">
          <input class="btn btn-primary" type="submit" value="리스트 보기">
         </form>
         </div>
	</div>

</div>

</div>

</body>

</html>