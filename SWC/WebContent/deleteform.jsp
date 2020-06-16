<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="member.memberMgr"/>
<%

	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
	String pwd = request.getParameter("pwd");
	String msg = "회원 탈퇴 실패";
	String url = "main.jsp";

	boolean result = mMgr.deleteMember(id, pwd);
	if(result){
		msg = "회원 탈퇴 성공";

		session.invalidate();
		
	}
	
%>
<script>
	location.href="<%=url%>";
	alert("<%=msg%>");
	alert("<%=id%>")
</script>