<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="rid" %>
<%@ attribute name="ruid" %>
<%@ attribute name="curmsg" %>

<c:if test="${uid == ruid}">
[<a href="sns_control.jsp?action=delreply&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">삭제</a>] 
</c:if>