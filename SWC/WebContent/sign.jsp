<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/sign.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<button onclick="document.getElementById('id01').style.display='block'" style="width:100px; height=30px">Sign Up</button>
<link>
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="signlogic.jsp">
    <div class="container">
      <h1>Sign Up</h1>
      <hr>
      <label for="id"><b>아이디</b></label>
      <input type="text" placeholder="Enter id" name="id" required>
      
      
      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
      
      
      <label for="email"><b>이메일</b></label>
      <input type="text" placeholder="Enter email" name="email" required>
      
      
	  <label for="years"><b>생년월일</b></label>
      <input type="text" placeholder="Enter years" name="years" required>
      
	  <label for="major"><b>전공</b></label>
      <input type="text" placeholder="Enter major" name="major" required>
      
	  <label for="region"><b>지역</b></label>
	  <select id="region" name="region" size=3>
	  	<option value="서울">서울</option>
	  	<option value="경기">경기</option>
	  	<option value="강원">강원</option>
	  	
	  </select>
	  
      <input type="text" placeholder="Enter region" name="region" required>

     <!-- <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
       --> 

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn" action ="signlogic.jsp">Sign Up</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>