<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>교보북클럽</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 1440px;
            margin: 0 auto;
            text-align: center;
        }
        h1 {
            color: #5055b1;
            font-size: 30px;
            margin-top: 50px;
        }
        .membership-benefits {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 50px;
        }
        .benefit {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 20px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .benefit img {
            width: 50px;
            height: 50px;
        }
        .benefit:hover {
            transform: translateY(-10px);
        }
        .benefit-title {
            font-size: 18px;
            color: #333;
            margin-top: 15px;
        }
        
        .home-button {
            background-color: #5055b1;
            color: white;
            font-size: 18px;
            padding: 12px 25px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            margin-top: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .home-button:hover {
            background-color: #4e4f9b;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
    <img src="images/discount-icon.png" alt="도시/문구/유한">
        <h1>교보북클럽에 오신 것을 환영해요</h1>
        <p>교보문고의 모든 서비스를 하나의 아이디로 편리하게!</p>
        
        <div class="membership-benefits">
            <div class="benefit">
                <img src="images/discount-icon.png" alt="도시/문구/유한">
                <div class="benefit-title">최대 7% 적립</div>
            </div>
            <div class="benefit">
                <img src="images/popcorn-icon.png" alt="다양한 e교환권으로 누리는">
                <div class="benefit-title">할인 혜택</div>
            </div>
            <div class="benefit">
                <img src="images/delivery-icon.png" alt="서울랜드">
                <div class="benefit-title">추가 제휴 할인</div>
            </div>
            <div class="benefit">
                <img src="images/free-delivery-icon.png" alt="오전에 주문하고 오후에 받는">
                <div class="benefit-title">바로배송</div>
            </div>        
            <div class="benefit">
                <img src="images/free-delivery-icon.png" alt="내일 받기 선택하면 e교환권 지급">
                <div class="benefit-title">착한배송</div>
            </div>
            <div class="benefit">
                <img src="images/free-delivery-icon.png" alt="온라인에서 결제하고 매장에서">
                <div class="benefit-title">바로드림</div>
            </div>
        </div>
                <button class="home-button" onclick="location.href='homePageURL'">홈으로</button>
    </div>
</body>
</html>