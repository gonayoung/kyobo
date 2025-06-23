<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/join.css">
      <script type="text/javascript" src="script/member.js"></script>
    </head>
    <body>
    

    
	<div class="join-container">
	
	    <a href="${pageContext.request.contextPath}/main.jsp">
	   <img src="${pageContext.request.contextPath}/img/8.png" alt="img8" class="logo">
	</a>

  <h2>회원 가입</h2>
  <p style="text-align:center; margin-bottom: 20px;">* 표시 항목은 필수 입력 항목입니다.</p>
  
  <form action="join.do" method="post" name="frm">
    <div class="row">
      <label>이름 *</label>
      <input type="text" name="username" size="20">
    </div>

    <div class="row">
      <label>아이디 *</label>
      <div class="inline">
        <input type="text" name="userid" id="userid" size="20">
        <input type="hidden" name="reid" size="20">
        <input type="button" value="중복 체크" onclick="idCheck()">
      </div>
    </div>

    <div class="row">
      <label>비밀번호 *</label>
      <input type="password" name="pwd" size="20">
    </div>

    <div class="row">
      <label>비밀번호 확인 *</label>
      <input type="password" name="pwd_check" size="20">
    </div>

    <div class="row">
      <label>이메일</label>
      <input type="text" name="email" size="20">
    </div>

    <div class="row">
      <label>전화번호</label>
      <input type="text" name="phone" size="20">
    </div>

    <div class="row">
      <label>등급</label>
      <div class="radio-group">
        <label><input type="radio" name="admin" value="0" checked> 일반회원</label>
        <label><input type="radio" name="admin" value="1"> 관리자</label>
      </div>
    </div>

    <div class="btn-group">
      <input type="submit" value="가입하기" onclick="return joinCheck()">
      <input type="reset" value="취소">
    </div>

    <p class="message">${message}</p>
  </form>
</div>
    </body>
  </html>