<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="Frimdata.*, java.util.*"%>
<%@page import="java.io.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="frimdao" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" class="Frimdata.FrimDO"/>
<jsp:setProperty name="frimdo" property="*"/> 


<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

/*

	if(action.equals("list")) {
		ArrayList<AddrBook> datas = ab.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("addrbook_list.jsp");
	}
	// 주소록 등록 요청인 경우
	else if(action.equals("insert")) {		
		if(ab.insertDB(addrbook)) { // insert는 이미 여기서 처리가 다 끝난거고  
			response.sendRedirect("addrbook_control.jsp?action=list"); //이거는 처리 다 된거 보여주기만 한것
		}
		else
			throw new Exception("DB 입력오류");
	}
	

	else if(action.equals("search")){
		ab_name = request.getParameter("ab_name");
	
		ArrayList<AddrBook> datas = ab.SearchDBList(ab_name);
		request.setAttribute("datas", datas);
		pageContext.forward("addrbook_list_jstl.jsp");
	}
	
	else if(action.equals("delete")){
		ab_name = request.getParameter("ab_name");
		ArrayList<AddrBook> datas = ab.removeDB(ab_name);
		response.sendRedirect("addrbook_control.jsp?action=list");
	} 

*/
	 if(action.equals("frim_main")){
	      System.out.println("frim_main");
	      ArrayList<FrimDO2> datas = frimdao.getDBList2();
	      request.setAttribute("datas", datas);
	      pageContext.forward("Frim_main.jsp");
	   
	   }
	
%>