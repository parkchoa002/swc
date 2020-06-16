<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</body>
</html>