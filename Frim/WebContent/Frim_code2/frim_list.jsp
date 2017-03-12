<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="Frimdata.*, java.util.*"%>

<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>

<!DOCTYPE HTML>

<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>frim data list</title>



</head>

   <jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />  

<body>
<div align="center"> 
<H2>주소록:목록화면</H2>

<HR>
		
				<form>
				      <table border="1">
				         <tr><th>사진</th></tr>
				         <%
				            
				            for(FrimDO  frim : (ArrayList<FrimDO>)datas) {
				            
				         %>
				      
				           <tr>
				            <td width = "300" height = "100" align = "center"><img src="http://localhost:8080/Frim/img/<%=frim.getImg_path()%>"/></td>
				            
				           </tr>
				          
				          <%
				            }
				          %>
				      </table>
				</form>
		
</div>
</body>
</html>