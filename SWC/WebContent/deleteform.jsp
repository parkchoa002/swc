<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
<body class="box_container">
 
<form action="deletelogic.jsp" method="post">
    <div class="container2">
      <label for="pwd"><b>비밀번호</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
        
      <button type="submit">회원탈퇴</button>
    </div>

 
 </form>

</body>
</html>