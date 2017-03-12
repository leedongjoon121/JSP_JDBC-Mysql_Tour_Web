<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form name="loginform" method="post" action="user_control.jsp">
<c:choose>
<c:when test="${uid != null}">
    <div class= "row">
    <div class="col-lg-2"><a href="sns_control.jsp?action=getall&suid=${uid}">${uid} </a></div>
	<div class="col-lg-2"><input type="hidden" name="action" value="logout"></div>
	<div class="col-lg-2"><input type="submit"  class = "btn btn-xl" value="로그아웃"></div>
	<div class="col-lg-6"></div>
	</div>
</c:when>

<c:otherwise>
	<div class= "row" style = "text-align:center" >
    
      <div class="col-lg-4 col-md-4 col-xs-4"><input type="text" name="uid" size="auto"  class="form-control"> </div>
      <div class="col-lg-4 col-md-4 col-xs-4"><input type="password" name="passwd" size="auto"  class="form-control"></div>
      <div class="col-lg-4 col-md-4 col-xs-4"><input type="submit" value="로그인" class = "btn btn-xl" style = "height = 15px"></div>
      &nbsp;<input type="hidden" name="action" value="login">
     </div>
</c:otherwise>
</c:choose>
</form>