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
<link rel="stylesheet" href="css/login.css">
</head>
<body class="box_container">

<% if(id != null){%>
<b><%=id%></b>님 환영합니다<br/><br/>
<p>hello</p>
<a href="logout.jsp">로그아웃</a>
<%} else { %>
<button class="btn" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Login</button>

<div id="id02" class="modal">
  
  <form class="modal-content animate2" action="loginlogic.jsp" method="post">
    <div class="imgcontainer2">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container2">
      <label for="id"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="id" required>

      <label for="pwd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn2">Cancel</button>
      
    </div>
  </form>
  <%} %>
</div>

</body>
</html>