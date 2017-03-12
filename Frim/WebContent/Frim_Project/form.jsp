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


<title>여행 사진 올리기</title>
<jsp:useBean id="frimdao" scope="request" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" scope="request" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 


</head>
<body>

<div class="container">
<div class="table-responsive">   

<h2>방문지역 사진 올리기</h2>
<hr>

<form id="form1" name=form1 method=post enctype="multipart/form-data" action="control.jsp">
<input type=hidden name="action" value="insert">
<table border="0">
  <tr>
    <th>이 름</th>
    <td><input type="text" name="name" maxlength="100"></td>
  </tr>
  
  <tr>
    <th>메 모</th>
    <td><input type="text" name="memo" maxlength="100"></td>
  </tr>
  <tr>
    <th>사진</th>
    <td><input type="file" name="img"></td>
  </tr>
  <tr>
  
    <td colspan=2 align=center><input type=submit value="저장">
    <input type=reset value="취소"></td> 
</tr>
</table>
</form>

<div class="container">
<div class="col-lg-6 col-md-6 col-xs-6" style = "text-align:center">
<form name=form2 method=post  action="index.jsp"> 
   <input class="btn btn-primary" type="submit" value="메인으로 돌아가기">
</form>

</div>

<div class="col-lg-6 col-md-6 col-xs-6" style = "text-align:center">
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