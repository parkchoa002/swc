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
<% if(id!= null){ %>
	<jsp:include page="login.jsp"/>
<% }else{%>
<jsp:include page="sign.jsp"/>
	<jsp:include page="login.jsp"/>
	
<%
} %>
<hr/>
<jsp:include page="menu.jsp"/>
<jsp:include page="searchbar.jsp"/>
<hr/>

</div>

<div class="footer_box">
	<footer>
	ㅁㄴㅇㅁㄴㅇ
	</footer>
</div>
</body>
</html>