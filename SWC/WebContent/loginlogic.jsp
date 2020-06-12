<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<jsp:useBean id ="mMgr" class="member.memberMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String remember = request.getParameter("remember"); // on  or null
	
	
	String url = "main.jsp";
	String msg = "로그인 실패";
	boolean result = mMgr.loginMember(id, pwd);
	if(result){
		session.setAttribute("idKey", id);
		msg="로그인에 성공함";
		if(remember == "on"){
		
			Cookie cookie_id = new Cookie("id", id);
			
			cookie_id.setMaxAge(60*60*24);
			response.addCookie(cookie_id);
			
			
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(int i =0; i<cookies.length; i++){
					Cookie c = cookies[i];
					String cNAME = c.getName();
					String cVALUE = c.getValue();
					out.println(cNAME);
					out.println(cVALUE);
				}
			}
		}
		
		
				
	}
	
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
	alert("<%=remember%>");
	
</script>