<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="mysns.sns.*, mysns.member.*, Frimdata.*, java.util.*"  %>
<%@page import="java.io.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 메시지 처리 빈즈 -->
<jsp:useBean id="msg" class="mysns.sns.Message" />
<jsp:useBean id="msgdao" class="mysns.sns.MessageDAO" />
<jsp:useBean id="reply" class="mysns.sns.Reply" />

<!-- 프로퍼티 set -->
<jsp:setProperty name="msg" property="*" />
<jsp:setProperty name="reply" property="*" />


<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletContext"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="frimdao" class="Frimdata.FrimDAO"/> 
<jsp:useBean id="frimdo" class="Frimdata.FrimDO3"/>
<jsp:setProperty name="frimdo" property="*"/> 

<%

	// 기본 파라미터 정리
	// 컨트롤러 요청 action 코드 값
	String action = request.getParameter("action");

	// 다음 페이지 요청 카운트
	String cnt = request.getParameter("cnt");

	// 특정 회원 게시물 only
	String suid = request.getParameter("suid");
	
	// 홈 URL
	String home;
	
	// 메시지 페이지 카운트
	int mcnt;
	
	if((cnt != null) && (suid !=null)) {
		// 각 action 처리후 메인으로 되돌아가기 위한 기본 url
		home = "sns_control.jsp?action=getall&cnt="+cnt+"&suid="+suid;
		mcnt = Integer.parseInt(request.getParameter("cnt"));
	}
	else {
		// 게시글 작성시에는 현재 상태와 상관 없이 전체 게시물의 첫페이지로 이동 하기 위한 url
		home = "sns_control.jsp?action=getall";
		// 첫페이지 요청인 경우, 기본 게시물 5개씩
		mcnt = 5;
	}
	
	// 댓글이 달린 게시물 위치 정보 -> accordion 상태 유지 목적
	request.setAttribute("curmsg", request.getParameter("curmsg"));

	// 새로운 메시지 등록
	if (action.equals("newmsg")) {
		if (msgdao.newMsg(msg))
			response.sendRedirect(home);
		else
			throw new Exception("메시지 등록 오류!!");
	// 댓글 등록
	} else if (action.equals("newreply")) {
		if (msgdao.newReply(reply))
			pageContext.forward(home);
		else
			throw new Exception("댓글 등록 오류!!");
	} 
	// 메시지 삭제
	else if (action.equals("delmsg")) {
		if(msgdao.delMsg(msg.getMid())) 
			response.sendRedirect(home);			
		else
			throw new Exception("메시지 등록 오류!!");;
	} 
	// 댓글 삭제
	else if (action.equals("delreply")) {
		if(msgdao.delReply(reply.getRid())) {
			pageContext.forward(home);
		}
		else
			throw new Exception("메시지 등록 오류!!");;
	}
	else if (action.equals("insert_img")) {
		pageContext.forward("form.jsp");
	}
	
	// 전체 게시글 가져오기
	else if (action.equals("getall")) {
		ArrayList<MessageSet> datas = msgdao.getAll(mcnt,suid);
		ArrayList<String> nusers = new MemberDAO().getNewMembers();
		
		ArrayList<FrimDO3> frim_datas = frimdao.getDBList3();
		request.setAttribute("frim_datas", frim_datas);
	   
		// 게시글 목록
		request.setAttribute("datas", datas);

		// 신규 회원 목록
		request.setAttribute("nusers", nusers);	

		// 특정 회원 only 인 경우 회원 uid 를 request  scope 에 저장
		request.setAttribute("suid",suid);
		
		// 현재 페이지 카운트 정보 저장
		request.setAttribute("cnt",mcnt);

		pageContext.forward("sns_main.jsp");
	}
	// 좋아요 추가
	else if(action.equals("fav")) {
		msgdao.favorite(msg.getMid());
		pageContext.forward(home);
	}
	else if(action.equals("frim_main")){
	      System.out.println("frim_main");
	      ArrayList<FrimDO3> datas = frimdao.getDBList3();
	      request.setAttribute("datas", datas);
	      pageContext.forward("Frim_main.jsp");
	   
	   }
%>
