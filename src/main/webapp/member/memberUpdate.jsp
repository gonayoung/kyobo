<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberUpdate.css">
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>

	<div class="Update-container">
		<a href="${pageContext.request.contextPath}/main.jsp">
	   <img src="${pageContext.request.contextPath}/img/8.png" alt="img8" class="logo">
		</a>
		
		<h2>회원 수정</h2>
		<form action="memberUpdate.do" method="post" name="frm">
		
		<div class="row">
			<label>이름</label>
			<input type="text" name="username" size="20" value="${mVo.username}" readonly>
		</div>
		
		<div class="row">
			<label>아이디</label>
			<input type="text" name="userid" size="20" value="${mVo.userid}" readonly>
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
      		<input type="text" name="email" size="20" value="${mVo.email}">
    	</div>
    	
    	<div class="row">
      		<label>전화번호</label>
      		<input type="text" name="phone" size="20" value="${mVo.phone}">
    	</div>
    	
    	<div class="row">
      		<label>등급</label>
     		<c:choose>
            <c:when test="${mVo.admin==0}">
              <input type="radio" name="admin" value="0" checked="checked"> 일반회원
              <input type="radio" name="admin" value="1"> 관리자
            </c:when>
            <c:otherwise>
              <input type="radio" name="admin" value="0"> 일반회원
              <input type="radio" name="admin" value="1" checked="checked"> 관리자
            </c:otherwise>
            </c:choose>
      	</div>
      	
      	<div class="btn-group">
			<input type="submit" value="확인" onclick="return joinCheck()">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="reset" value="취소">
    	</div>
    	</form>
	</div>
	
</body>
</html>