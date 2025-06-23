<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/script/member.js"></script>
</head>
<body>

<div class="login-container">
	<a href="${pageContext.request.contextPath}/main.jsp">
	    <img src="${pageContext.request.contextPath}/img/8.png" alt="img8" class="logo">
	</a>

    <h2 class="title">로그인</h2>

    <form action="login.do" method="post" name="frm" class="login-form">
        <input type="text" name="userid" placeholder="아이디를 입력해 주세요." value="${userid}">
        <input type="password" name="pwd" placeholder="비밀번호를 입력해 주세요.">

        <button type="submit" onclick="return loginCheck()" class="login-btn">로그인</button>

        <div class="options">
            <label><input type="checkbox" name="saveId"> 아이디 저장</label>
            <div>
                <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a>
            </div>
        </div>

        <div class="extra-buttons">
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/join.do'">회원가입</button>
            <button type="reset">취소</button>
        </div>

        <p class="message">${message}</p>
    </form>
</div>

</body>
</html>
