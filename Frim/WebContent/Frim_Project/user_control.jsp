<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="mysns.sns.*, mysns.member.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="member" class="mysns.member.Member" />
<jsp:setProperty name="member" property="*" />
<jsp:useBean id="mdao" class="mysns.member.MemberDAO" />

<%
	// 컨트롤러 요청 action 코드값
	String action = request.getParameter("action");

	// 신규 회원등록
	if(action.equals("new")) {
		if(mdao.addMember(member))
			out.println("<script>alert('정상적으로 등록 되었습니다. 로그인 하세요!!');opener.window.location.reload();window.close();</script>");
		else
			out.println("<script>alert('같은 아이디가 존재 합니다!!');history.go(-1);</script>");
	}
	// 로그인
	else if(action.equals("login")) {
		if(mdao.login(member.getUid(),member.getPasswd())) {
			// 로그인 성공시 세션에 "uid" 저장
			session.setAttribute("uid",member.getUid());
			response.sendRedirect("sns_control.jsp?action=getall");
		}
		else {
			out.println("<script>alert('아이디나 비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
		}
	} 
	// 로그아웃
	else if(action.equals("logout")) {
		// 세션에 저장된 값 초기화
		session.removeAttribute("uid");
		//session.removeAttribute("suid");
		response.sendRedirect("sns_control.jsp?action=getall");		
	}
%>