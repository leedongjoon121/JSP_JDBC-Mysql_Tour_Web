<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="addrbook_error.jsp" import="Frimdata.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE HTML>

<html>
<head>

<title>여행 사진 올리기</title>
<jsp:useBean id="frimdao" scope="request" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" scope="request" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 


</head>
<body>
<center>
<h2>방문지역 사진 올리기</h2>
<hr>

<form id="form1" name=form1 method=post enctype="multipart/form-data" action="control.jsp">
<input type=hidden name="action" value="insert">
<table border="1">
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

<form name=form2 method=post  action="list_control.jsp">
   <input type="hidden" name="action" value="list">
   <input type="submit" value="리스트 보기">
</form>

<div>
<button type="text"><a href="index.jsp">메인으로 돌아가기</a></button>
</div>
</center>
</body>

</html>