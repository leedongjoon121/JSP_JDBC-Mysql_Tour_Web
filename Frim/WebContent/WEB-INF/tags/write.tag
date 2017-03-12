<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ attribute name="type" %>

<c:if test="${uid != null}">
<c:choose> 
	<c:when test="${type == 'msg'}"><input  type="text" name="msg" maxlength="50"></c:when>
	<c:when test="${type == 'rmsg'}">댓글달기 <input  type="text" name="rmsg" maxlength="50" size="60"></c:when>
</c:choose>
</c:if>

<c:if test="${uid == null}">
<c:choose> 
	<c:when test="${type == 'msg'}"><input type="text" name="msg" maxlength="50" disabled="disabled"  value="작성하려면 로그인 하세요!!"></c:when>
	<c:when test="${type == 'rmsg'}">댓글달기 <input type="text" name="rmsg" maxlength="50" size="60" disabled="disabled" value="작성하려면 로그인 하세요!!"></c:when>
</c:choose>
</c:if>