<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="mgr" class="member.memberMgr"/>
<jsp:useBean id="bean" class="member.memberBean"/>
<jsp:setProperty property="*" name="bean"/>

<%
	String id = request.getParameter("id");
	boolean result = mgr.updateMember(bean);
	String msg = "회원정보 수정에 실패함";
	String location ="main.jsp";
	if(result){
		msg="회원정보 수정 함";
		location = "main.jsp";
	}
%>

<%
	out.println(id);
%>
<script>

	alert("<%=msg%>");
	location.href="<%=location%>";
</script>