<%@ page language="java" contentType="text/html;charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My SNS</title>
<link rel="stylesheet" href="css/agency.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script>
   $(function() {
      $("#accordion").accordion({
         heightStyle : "content",
         active : parseInt("${curmsg == null ? 0:curmsg}")
      });
   });

   function newuser() {
      window
            .open(
                  "new_user.jsp",
                  "newuser",
                  "titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=300,height=240");
   }
</script>

<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
   
   

  <div>
      <div class="login">
         <div class="row">
           <div class="col-lg-3">              </div>
            <div class="col-lg-2">     <a href="javascript:newuser()">회원가입</a>                </div>
            <div class="col-lg-4">          <sns:login />            </div>
            <div class="col-lg-2">              </div>
            
         </div>
      </div>
   </div>


   <div>
    <form id="form1" name=form1 method=post  action="sns_control.jsp">
	 <input type=hidden name="action" value="insert_img">
     <input type=submit value="사진 전송">
     </form>
   </div>

   <div id="wrapper">
      <section id="main">
         <section id="xxx">
            <b>내소식 업데이트</b>
            <form class="m_form" method="post" action="sns_control.jsp?action=newmsg">
               <input type="hidden" name="uid" value="${uid}">
               <sns:write type="msg"/>
               <button class="btn btn-primary" type="submit">등록</button>
            </form>
            <br>
            <br>
           
            <h3 class ="fnews">친구들의 최신 소식</h3>
            <div id="accordion">
               <c:forEach varStatus="mcnt" var="msgs" items="${datas}">
               <c:set var="m" value="${msgs.message}"/>
               <h3>[${m.uid}]${m.msg} :: [좋아요 ${m.favcount} | 댓글 ${m.replycount}]</h3>
               <div>
                  <p></p>
                  <p><sns:smenu mid="${m.mid}" auid="${m.uid}" curmsg="${mcnt.index}"/>/ ${m.date}에 작성된 글입니다.</p>
                  
                  <ul class="reply">
                  <c:forEach  var="r" items="${msgs.rlist}">
                     <li>${r.uid } :: ${r.rmsg} - ${r.date} <sns:rmenu curmsg="${mcnt.index}" rid="${r.rid}" ruid="${r.uid}"/></li>
                  </c:forEach>
                  </ul>
                  
                  <form action="sns_control.jsp?action=newreply&cnt=${cnt}" method="post">
                     <input type="hidden" name="mid" value="${m.mid}">
                     <input type="hidden" name="uid" value="${uid}">
                     <input type="hidden" name="suid" value="${suid}">
                     <input type="hidden" name="curmsg" value="${mcnt.index}">            
                     <sns:write type="rmsg"/>
                  </form>
               </div>
               </c:forEach>
            </div>   
            <div align="center"><a href="sns_control.jsp?action=getall&cnt=${cnt+5}&suid=${suid}">더보기&gt;&gt;</a></div>
         </section>
      
      </section>
   </div>

</body>
</html>