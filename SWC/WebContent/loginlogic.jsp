<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<jsp:useBean id ="mMgr" class="member.memberMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String url = "main.jsp";
	String msg = "로그인 실패";
	boolean result = mMgr.loginMember(id, pwd);
	if(result){
		session.setAttribute("idKey", id);
		msg="로그인에 성공함";
		
	}
	
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>