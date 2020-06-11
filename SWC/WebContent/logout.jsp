<%@ page contentType="text/html; charset=utf-8" %>
<%
	session.invalidate();
%>	
<script>

	alert('로그아웃됨');
	location.href="main.jsp";
</script>