<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="header_box">
<jsp:include page="header.jsp"/>
</div>
<div class="footer_box">
	<footer>
	ㅁㄴㅇㅁㄴㅇ
	</footer>
</div>
</body>
</html>