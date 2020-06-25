<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean id="mMbean" class="member.memberBean"/>

<%

	String idkey =  (String)session.getAttribute("idKey");

%>


<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/update.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form class="update" action="updatelogic.jsp">
    <div class="">
    <table>
      <h1>update</h1>
      <label for="id"><b>아이디</b></label>
      <input type="text" placeholder="Enter id" name="id" value="<%=idkey%>" readonly>
      
      
      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
      
      
      <label for="email"><b>이메일</b></label>
      <input type="text" placeholder="Enter email" name="email" required>
      
      
	  <label for="years"><b>생년월일</b></label>
      <input type="text" placeholder="Enter years" name="years" required>
      
	  <label for="major"><b>전공</b></label>
      <input type="text" placeholder="Enter major" name="major" required>
      
	  <label for="region"><b>지역</b></label>
	  
	  
      <input type="text" placeholder="Enter region" name="region" required>

     <!-- <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
       --> 

      <div class="clearfix">
        <button type="button">Cancel</button>
        <button type="submit" class="signupbtn" action ="signlogic.jsp">회원정보 수정</button>
      </div>
    </div>
    </table>
  </form>
</body>
</html>