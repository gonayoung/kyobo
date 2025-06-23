<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty loginUser}">
	<jsp:forward page='login.do' />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>교보북클럽</title>
<link href="css/loginMain.css" rel="stylesheet">

<script type="text/javascript" src="member.js"></script>
</head>
<body>
    <div class="container">
     <img src="img/108.png" alt="img108">
             <h1>${loginUser.username}(${loginUser.userid})님 교보북클럽에 오신 것을 환영해요</h1>
        <p>교보문고의 모든 서비스를 하나의 아이디로 편리하게!</p>
      
      <div class="membership-benefits">
            <div class="benefit">
                <img src="img/109.png" alt="img109">
                <div class="benefit-title">
                	<span>도서/문구/음반</span>
                	<p>최대 7% 적립</p>
                </div>
            </div>
            <div class="benefit">
                <img src="img/110.png" alt="img110">
                <div class="benefit-title">
                	<span>다양한 e교환권으로 누리는</span>
                	<p>할인 혜택</p>
                </div>
            </div>
            <div class="benefit">
                <img src="img/112.png" alt="img112">
                <div class="benefit-title">
                    <span>서울랜드</span>
                	<p>추가 제휴 할인</p>
                </div>
            </div>
            <div class="benefit">
                <img src="img/111.png" alt="img111">
                <div class="benefit-title">
                    <span>오전에 주문하고 오후에 받는</span>
                	<p>바로배송</p>
                </div>
            </div>        
            <div class="benefit">
                <img src="img/113.png" alt="img113">
                <div class="benefit-title">
                    <span>내일 받기 선택하면 e교환권 지급</span>
                	<p>착한배송</p>
                </div>
            </div>
            <div class="benefit">
                <img src="img/114.png" alt="img114">
                <div class="benefit-title">
                    <span>온라인에서 결제하고 매장에서</span>
                	<p>바로드림</p>
                </div>
            </div>
        </div>  
         <button class="home-button" onclick="location.href='main.jsp'">홈으로</button>
                <button class="home-button" onclick="location.href='logout.do'">로그아웃</button>
                <button class="home-button" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">회원정보변경</button>

    </div>

<%-- <form action="logout.do">
   <table>
      <tr>
	<td>${loginUser.username}(${loginUser.userid})님 환영합니다</td>
      </tr>   
      <tr>
	<td colspan="2" align="center">
              <input type="submit" value="로그아웃"> 
              <input type="button" value="회원정보변경" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
	</td>
       </tr>
    </table>
</form> --%>
</body>
</html>