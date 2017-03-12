<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mysns error</title>
</head>
<jsp:useBean id="now" class="java.util.Date" />
<body>
<div align=center>
<H2>MySNS 오류!!</H2>
<HR>

<table>
<tr bgcolor="pink"><td>
관리자에게 문의해 주세요..<BR>
빠른시일내 복구하겠습니다.
</td></tr>
<tr><td>
${now}<p>
요청 실패 URI : ${pageContext.errorData.requestURI}<BR>
상태코드 : ${pageContext.errorData.statusCode}<BR>
예외유형 : ${pageContext.errorData.throwable}
</td></tr>
</table>
</div>
</html>