<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"   import="Frimdata.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="frimdao" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 


<% 

request.setCharacterEncoding("utf-8");

        String action = request.getParameter("action");
        String id = request.getParameter("id");
        
        
        
      
      frimdo.setName(request.getParameter("name"));
      frimdo.setMemo(request.getParameter("memo"));
      
    if(action.equals("list")) {
	   System.out.println("list안에 list_control안");
      ArrayList<FrimDO3> datas = frimdao.getDBList3();
      request.setAttribute("datas", datas);
      pageContext.forward("list.jsp");
      
   } else if(action.equals("form")){
      request.setAttribute("frimdo",frimdo);
      pageContext.forward("form.jsp");
      
   }else if(action.equals("delete")) {
	   
		if(frimdao.deleteDB(Integer.parseInt(id))) { // 여기서 ab.deleteDB()함수를 통해 지우고 
			response.sendRedirect("list_control.jsp?action=list"); //  지워진걸 보여줌 !  
		}
		else
			throw new Exception("DB 삭제 오류");
	}  
   
%>