<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.gny.dao.MemberDAO" %>
<%@ page import="com.gny.dto.MemberVO" %>

<%
String userId = (String) session.getAttribute("userId");
int admin = 0;
if (userId != null) {
    MemberVO mVo = MemberDAO.getInstance().getMember(userId);
    if (mVo != null) {
        admin = mVo.getAdmin();
    }
}
%>

<!DOCTYPE html>
<html lang="ko">


<html>

<head>
    <title>좋은것만,오직 좋은 것만</title>
    <link href="css/header.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <link href="css/reset.css" rel="stylesheet">
    <link href="css/sub.css" rel="stylesheet">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.0.min.js"></script>
    <script src="./js/bookImg.js"></script>
    <script src="./js/findArea.js"></script>
    <script src="./js/bestArea.js"></script>
    <script src="./js/buyTogether.js"></script>
    <script src="./js/authorBooks.js"></script>
    <script src="./js/reviewList.js"></script>
    <script src="./js/eventArea.js"></script>

<meta charset="UTF-8">

</head>

<body>
    <header>
		<div class="logo-wrap">
		  <div class="logo">
		    <a href="#"><img src="img/1.jpg" alt="img1"></a>
		  </div>
		</div>

        <div class="inventory">
            <div class="left_inventory">
                <ul class="inventory_wrap">

                    <li>
                        <a href="main.jsp">
                            <span>교보문고</span>
                        </a>
                    </li>

                    <li>
                        <a href="main.jsp">
                            <span>eBook</span>
                        </a>
                    </li>

                    <li>
                        <a href="main.jsp">
                            <span>sam</span>
                        </a>
                    </li>

                    <li>
                        <a href="main.jsp">
                            <span>핫트랙스</span>
                        </a>
                    </li>

                    <li>
                        <a href="main.jsp">
                            <span>톡소다</span>
                        </a>
                    </li>

                    <li>
                        <a href="main.jsp">
                            <span>매장안내</span>
                        </a>
                    </li>

                    <li class="more">
                        <span><a href="#">브랜드 더보기 ▼</a></span>
                    </li>

                </ul>

            </div>

            <div class="rigth_inventoty">
			  <ul class="service">
			    <li><a href="index.jsp">고객센터</a></li>
				<li><a href="login.do">회원가입</a></li>			
			    <!-- 로그인 상태 체크 -->
			    <c:choose>
			      <c:when test="${empty sessionScope.loginUser}">
			        <li><a href="login.do">로그인</a></li>
			      </c:when>
			      <c:otherwise>
			        <li><a href="logout.do">로그아웃</a></li>
			
			        <!-- 상품 등록 -->
			        <c:if test="${loginUser.admin == 1}">
			          <li><a href="productWrite.do">상품 등록</a></li>
			        </c:if>
			      </c:otherwise>
			    </c:choose>
			  </ul>
			</div>
        </div>


        <div id="logobar">

            <div class="logobar_img">
                <a href="#"><img src="img/8.png" alt="img8"></a>
            </div>

            <form id="search">
                <div id="search_select_box">
                    <select title="검색유형" id="search_select">
                        <option value="total">통합검색</option>
                        <option value="kyobo">교보문고</option>
                        <option value="hottracks">eBook</option>
                        <option value="hottracks">sam</option>
                        <option value="hottracks">핫트랙스</option>
                    </select>
                </div>

                <div id="search_text_box">
                    <input type="text" id="search_text" placeholder="아이패드부터 e교환권까지, 나랑 별 따라가자!">
                    <button type="submit" id="search_btn">
                        <img src="img/11.png" alt="img11">
                    </button>
                </div>
            </form>

            <div class="search_user">
                <a href="#"><img src="img/12.png" alt="img12"></a>
                <a href="login.do"><img src="img/13.png" alt="img13"></a>
            </div>

        </div>

        <nav>

            <button class="nav_all"><img src="img/10.png" alt="img10"></button>

            <ul class="nav_list">
                <li><a href="main.jsp">책의날특집</a></li>
                <li><a href="main.jsp">한강산문집</a></li>
                <li><a href="main.jsp">베스트</a></li>
                <li><a href="main.jsp">신상품</a></li>
                <li><a href="main.jsp">이벤트</a></li>
                <li><a href="main.jsp">바로펀딩</a></li>
                <li><a href="main.jsp">PICKS</a></li>
                <li><a href="main.jsp">CASTing</a></li>
                <li><a href="main.jsp">컬처라운지</a></li>
            </ul>

            <ul class="nav_list_sub">
                <li><a href="main.jsp">오늘의 미션</a></li>
                <li><a href="main.jsp">할인혜택</a></li>
                <li><a href="main.jsp">제13회 스토리대상 </a></li>
            </ul>

        </nav>
    </header>


<div id="sub">


    <div class="list">
        <ul class="home_list">
            <a href="main.jsp"><img src="img/72.png" alt="img72"></a>
            <li><a href="#">국내도서 <img src="img/73.png" alt="img73"></a></li>
            <li>/</li>
            <li><a href="#">시/에세이 <img src="img/73.png" alt="img73"></a></li>
            <li>/</li>
            <li><a href="#">나라별 에세이 <img src="img/73.png" alt="img73"></a></li>
            <li>/</li>
            <li><a href="#">한국에세이 <img src="img/73.png" alt="img73"></a></li>
        </ul>
    </div>

    <div class="good">
        <div class="good_title">
        <span>좋은 것만,오직 좋은 것만</span>
        </div>

        <div class="share">
            <a href="#"><img src="img/74.png" alt="img74"></a>
        </div>
    </div>

    <div class="click_price">
        <ul class="prod_all">
            <li>
                <span class="prod_type">국내도서</span>
                <span class="prod_price">15,120원</span>
            </li>
            <li>
                <span class="prod_type">eBook</span>
                <span class="prod_price">10,800원</span>
            </li>
            <li>
                <span class="prod_type">sam</span>
                <span class="prod_price">eBook</span>
            </li>
        </ul>
    </div>
    

    <!--왼쪽 메인-->
    <div class="main_book">
        <div class="book_notice">
            <span class="book1">최대호 저자(글)</span><br>
            <span class="book2">포레스트북스ㆍ2025년2월26일</span>
            <ul class="book3">
                <li><img src="img/75.png" alt="img75"></li>
                <li>주간베스트</li>
                <li>시/에세이 <span class="num">12위</span></li>
            </ul>
            
            <a href="#"><img src="img/76.PNG" alt="img76"></a>
        </div>
        
        <!--가운데 메인-->
        <div class="book_img">
            <ul class="book_slide">
                <li><img src="img/77.png" alt="img77"></li>
                <li><img src="img/78.png" alt="img78"></li>
                <li><img src="img/79.PNG" alt="img79"></li>
            </ul>
            <button class="book_prev">&lt;</button>
            <button class="book_next">&gt;</button>
        </div>

        <!--오른쪽 주문-->
        <div class="book_price">
            <div class="badges">
                <span>2025년3월07일 오늘의 선택</span>
                <span>MD의 선택</span>
                <span>무료배송</span>
                <span>사은품</span>
                <span>이벤트</span>
                <span>소득공제</span>
            </div>
        
            <div class="price_info">
                <span class="discount">10%</span>
                <span class="sale_price">15,120원</span>
                <span class="original_price">16,800원</span>
            </div>
        
            <div class="point_info">
                <span>적립/혜택</span>
                <span class="point">840P</span>
                <a href="#"><img src="img/73.png" alt="img73"></a>
            </div>
    
            <div class="delivery_info">
                <strong>배송안내</strong><span>무료배송</span>
                <a href="#"><img src="img/80.png" alt="img80"></a>
                <div class="fast_delivery">
                    <span class="tag">새벽배송</span>
                <span>내일(4/25, 금 오전 7시 전) 도착</span>
                <a href="#"><img src="img/81.png" alt="img81"></a>
                </div>
            </div>
    
            <div class="login_guide">
                <strong>로그인</strong> 후 정확한 배송 안내를 받아보세요!
            </div>
    
            <div class="promotion_box">
                <ul>
                    <li>이달의 꽃과 함께 책을 받아보세요!</li>
                    <li>ㆍ1원 구매 시 결제 단계에서 적용 가능합니다.</li>
                </ul>
                <button class="detail_btn">자세히 보기 &gt;</button>
                
            </div>
        
            <div class="book_price_notice">
                <span>알림 신청하시면 원하시는 정보를 받아 보실 수 있습니다.</span>
            </div>

            <div class="book_price_btns">
                <button class="notify_btn">알림신청</button>
                <button class="store_btn">매장 재고·위치</button>
            </div>
        </div>
    </div>

    <!--미리보기 버튼-->
    <div class="Preview_btn">
        <button><img src="img/82.png" alt="img82">미리보기</button>
        <button><img src="img/83.png" alt="img83">eBook미리보기</button>
    </div>

    <!--탭-->
    <div class="tab">
        <ul>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">상품정보</a></li>
            <li><a href="#">리뷰(47)</a></li>
            <li><a href="#">교환/반품/품절</a></li>
        </ul>
    </div>

    <!---->
    <div class="main_wrapper">
        <!--이책의이벤트-->
        <div class="event_area">
            <span>이 책의 이벤트</span>
            <ul class="event_list"></ul>
        </div>

        <!--기분좋은발견-->
        <div class="find_area">
            <span class="find_title">기분 좋은 발견</span>
        
            <div class="find_slider">
                <ul class="find_slide_wrap">
                    <li><img src="img/90.png" alt="img90"></li>
                    <li><img src="img/91.png" alt="img91"></li>
                    <li><img src="img/92.png" alt="img92"></li>
                    <li><img src="img/93.png" alt="img93"></li>
                </ul>
            </div>
        </div>

        <!-- 분야별 베스트 -->
        <div class="best_area">
            <div class="best_title">이 분야의 베스트</div>
            <ul class="best_list"></ul>
        </div>

        <!-- 함께 구매한 상품 -->
        <div class="buy_together">
            <h1 class="togerher">함께 구매한 상품</h1>
            <h2 class="together_title"></h2>
        
            <!-- 도서 슬라이드 (books) -->
            <div class="together_outer">
                <h3 class="section_title">도서</h3>
                <button class="together_prev_book">&lt;</button>
                <div class="together_slider_wrap">
                    <ul class="together_slide_book"></ul> 
                </div>
                <button class="together_next_book">&gt;</button>
            </div>
        
            <!-- 굿즈 슬라이드 (goods) -->
            <div class="together_outer">
                <h3 class="section_title">라이프</h3>
                <button class="together_prev_goods">&lt;</button>
                <div class="together_slider_wrap">
                <ul class="together_slide_goods"></ul>
                </div>
                <button class="together_next_goods">&gt;</button>
            </div>
        </div>

        <!--오른쪽 마지막 이미지-->
        <div class="amazon">
            <img src="img/94.png" alt="img94">
        </div>

        <!--북소개 이미지-->
        <div class="book_show">
            <img src="img/95.png" alt="img95">
        </div>

        <!--책소개정보-->
        <div class="book_intro">
            <h2 class="book_intro_title">책 소개</h2>
            <p class="book_intro_subtitle">이 책이 속한 분야</p>
        
            <ul class="book_intro_path">
                <li><a href="#">국내도서</a></li>
                <li><a href="#">시/에세이</a></li>
                <li><a href="#">나라별 에세이</a></li>
                <li><a href="#">한국에세이</a></li>
            </ul>
        </div>

        <!--책소개정보 내용-->
        <div class="book_story">
            <span class="story_title">“보통의 조각들을 이어 붙였을 때,<br>
                비로소 온전한 평온을 만날 수 있게 된다”</span>

            <p>『평범히 살고 싶어 열심히 살고 있다』, 『보이지 않는 곳에서 애쓰고 있는 너에게』, 『노력 없이 행복하고 걱정 없이 살아갈 것』등으로 수많은 독자에게 사랑받아온 최대호 작가가 펴낸 4년 만의 신작. 이번 신작에서는 10년간 행복에 관한 글을 써오며 비로소 깨닫게 된 인생의 진실과 독자들과 수없이 고민을 주고받으며 얻어낸 진정한 삶의 기술이 고스란히 담겨 있다. 그가 마주한 결론은, 행복은 요란하게 오지 않는다는 것. 우리가 그토록 원하던 평온은 매일 마주하는 지루한 날들 사이에 숨어 있다는 것이다.
                이 책은 그렇게 조용히 숨어 있는 행복의 기척을 알아채는 방법에 관해 일러준다. 그 어떤 소용돌이에 휘몰아치는 날이라고 해도, 양치질하는 시간만큼의 평온, 스치듯 건네받은 따뜻한 말 한마디로 우리는 하루 전체를 그럭저럭 잘 보낼 수 있게 된다. 이 잠깐의 반짝임을 찰나로 지나치느냐, 슬로 모션처럼 느릿하게 상영해 오래도록 간직해 행복한 하루를 즐기느냐는 우리에게 달려 있다. 16만 명의 팔로워들은 저자가 새로이 일러주는 삶의 진실에 관해 일찍이 찬사를 보냈다. “세상에서 제일 어렵지 않은 행복 찾기”, “아무 일 없는 하루가 아무 일이라는 걸 이제야 알았다” 등 진심 어린 공감도 끊이지 않고 있다.
                비싼 항공권을 끊지 않아도 괜찮다. 그동안 닿고자 했던 안온한 하루가 이렇게 헐랭한 방법으로도 가능한지 의심이 들어도 상관없다. 저자가 안내하는 행복의 단순하고 투명한 진실을 따라가보자. 돌아볼 필요 없이 지금 바로 눈앞에 펼쳐진 적당한 기쁨과 만족을 움켜질 수 있을 테니까.</p>
        </div>

        <!--작가소개-->
        <h2 class="author_title">작가정보</h2>
        <div class="author_section">

        
            <div class="author_meta">
            <p class="author_name">저자(글) <strong>최대호</strong></p>
            <div class="author_tags">
                <span>현대문학가 &gt; 시인</span>
                <span>현대문학가 &gt; 수필가</span>
            </div>
            </div>
        
            <div class="author_profile">
            <img src="img/96.png" alt="img96" class="author_image">
            <p class="author_intro">
                불안에 자신을 잃고 싶지 않아 고민하다가, 행복을 찾기 위한 노력에서 얻은 진실과 통찰을 적은 글들을 SNS에 올리기 시작했다. 그렇게 10년간 수백만 명의 마음을 위로하는 글을 쓰며 작가로 활동하고 있다.이 책 『좋은 것만, 오직 좋은 것만』에는 적당한 기쁨과 만족감을 움켜쥘 줄 아는 사람이 되고자 하는 다짐과 일상에 조용히 숨어 있는 행복의 기척을 알아채는 방법이 가득하다.
            </p>
            </div>
        
            <div class="author_books">
            <h3 class="author_books_title">대표작</h3>
            <div class="author_book_slider"></div>
            </div>
        </div>

        <!--목차-->
        <div class="book_index">
            <span class="index_title">목차</span><br><br>

            <div class="index_prolog">
            <p>프롤로그: ______, 바라던 행복이 온다</p><br>
            <p>1장 가장 좋은 것을 나에게 주고 싶다
                우리는 아직도 칭찬이 필요한 어른들
                설렘의 기척은 어디에나 있다
                살짝 망했어도 이만하면 괜찮은 평화
                나는 어떤 순간에도 자격 있는 사람
                행복은 요란하게 오지 않는다</p>
            </div>

            <span class="index_btn">펼치기<img src="img/73.png" alt="img73"></span>
        </div>

        <!--책속으로-->
        <div class="book_in">
            <span class="in_title">책 속으로</span>

            <div class="in_content">
            <p>긍정적인 생각과 부정적인 생각의 황금비율이 1.6:1이래요. 황금비율씩이나 되는 건데, 1.6:1이라면 꽤 할만하다고 느꼈어요. 살다 보면 누구나 긍정과 부정이 교차하지요. 그런데 딱 0.6만큼의 긍정이 더 있으면 엄청 잘하고 있다는 뜻이 되네요. 좋은 생각을 두 번 했다면 한 번 정도는 부정적인 생각이 떠올라도 대단히 잘못한 건 아니라는 거죠. 긍정과 부정의 비율을 그동안 너무 어렵게만 생각했었나 봐요.. _「살짝 망했어도 이만하면 괜찮은 평화」, 21쪽</p>
            </div>

            <span class="in_btn">펼치기<img src="img/73.png" alt="img73"></span>
        </div>

        <!--출판사서평-->

        <div class="book_report">
            <span class="report_title">출판사 서평</span>
            <ul class="report_list">
                <li>* 카카오 선물하기 도서 1위</li>
                <li>* 50주 연속 베스트셀러 작가의 신작 에세이</li>
                <li>* 2025년 상반기 기대작, 16만 팔로워가 기다린 책</li><br>
                <li>“가장 좋은 것을 나에게 주고 싶다”</li>
                <li>누구보다 행복했으면 하는 당신에게, 그리고 나에게 반드시 선물해야 하는 책</li>
            </ul>

            <span class="report_btn">펼치기<img src="img/73.png" alt="img73"></span>
        </div>
        
        <div class="basic_info">
            <h2 class="basic_info_title">기본정보</h2>
        
            <div class="info_table">
                <div class="info_row">
                    <div class="info_label">ISBN</div>
                    <div class="info_value">9791194530084</div>
                </div>
        
                <div class="info_row">
                    <div class="info_label">발행(출시)일자</div>
                    <div class="info_value">2025년 02월 26일</div>
                </div>
        
                <div class="info_row">
                    <div class="info_label">쪽수</div>
                    <div class="info_value">준비중</div>
                </div>
        
                <div class="info_row">
                    <div class="info_label">크기</div>
                    <div class="info_value">
                        126 * 189 * 18 mm / 386 g
                        <select class="format_select">
                            <option>판형알림</option>
                        </select>
                    </div>
                </div>
        
                <div class="info_row">
                    <div class="info_label">총권수</div>
                    <div class="info_value">1권</div>
                </div>
            </div>
        </div>
        
        <!-- 리뷰 -->
        <div class="title_section">
            <h4>Klover 리뷰 (92) <img src="img/80.png" alt="img80"></h4>
        
            <div class="review_action">
                <span class="point_up">*구매 후 리뷰 작성 시, e교환권 200원 적립</span>
                <button class="review_purple_btn">
                    <img src="img/103.png" alt="icon">리뷰 작성</button>
            </div>
        </div>
        
            <div class="review_img">
                <img src="img/104.PNG" alt="img104">
            </div>


        <!--배너이미지-->
        <div class="banner_img">
            <img src="img/105.png" alt="img105">
        </div>

        <!--문장수집-->
        <div class="sentence_header">
            <div class="sentence_title">
            문장수집 (2) <img src="img/80.png" alt="느낌표 아이콘">
            </div>
            
            <div class="sentence_buttons">
                <span class="sentence_notice">*구매 후 리뷰 작성 시, e교환권 100원 적립</span>
                <button class="sentence_white_btn">내 독서기록</button>
                <button class="sentence_purple_btn">
                    <img src="img/103.png" alt="icon">문장수집 작성
                </button>
            </div>
        </div>
        
        <div class="sentence_img">
            <ul>
            <li>
                <img src="img/106.PNG" alt="img106">
                <span>he******** | 2025.04.10 | 신고/차단</span>
            </li>
            <li>
                <img src="img/107.PNG" alt="img107">
                <span>ye****** | 2025.03.28 | 신고/차단</span>
            </li>
            </ul>
        </div>

        <!--교환반품품절-->
        <div class="return_info_section">

        <div class="return_info_header">
            <h2>교환/반품/품절 안내</h2>
            <div class="return_info_buttons">
            <button class="return_white_btn">반품/교환 신청</button>
            <button class="return_purple_btn">1:1 문의</button>
            </div>
        </div>
        
        <hr class="return_divider">
        
        <div class="return_info_content">
        
            <div class="return_info_item">
            <h3>반품/교환방법</h3>
            <p>마이룸 > 주문관리 > 주문/배송내역 > 주문조회 > 반품/교환 신청, 1:1 상담 > 반품/교환/환불 또는 고객센터 (1544-1900)<br>
            * 오프라인, 해외배송 주문, 기프트 주문 시 1:1 상담>반품/교환/환불 또는 고객센터 (1544-1900)</p>
            </div>
        
            <div class="return_info_item">
            <h3>반품/교환 가능 기간</h3>
            <p>변심일 경우 수령 후 7일 이내<br>상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내</p>
            </div>
        
            <div class="return_info_item">
            <h3>반품/교환 비용</h3>
            <p>변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담</p>
            </div>
        
            <div class="return_info_item">
            <h3>반품/교환 불가 사유</h3>
            <ul>
                <li>소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우</li>
                <li>소비자의 사용, 구성품 분실로 상품 가치가 현저히 감소한 경우</li>
                <li>복제가 가능한 상품 등의 포장을 훼손한 경우</li>
                <li>시간 경과로 재판매가 곤란할 정도로 상품 가치가 현저히 감소한 경우</li>
                <li>디지털 콘텐츠(전자책, 오디오북 등) 다운로드 상품</li>
                <li>전자상거래 등에서 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당하는 경우</li>
            </ul>
            </div>
        
            <div class="return_info_item">
            <h3>상품 품절</h3>
            <p>공급사 사정에 따라 품절/지연될 수 있으며, 품절 시 별도 안내드립니다.</p>
            </div>
        
            <div class="return_info_item">
            <h3>소비자 피해보상 환불 지연에 따른 배상</h3>
            <p>소비자 분쟁해결 기준에 따름</p>
            </div>
        
            <div class="return_info_note">
            * 상품 품절/변경/교환 관련 안내사항은 사전 고지 없이 변경될 수 있습니다.
            </div>
        
        </div>
        
        </div>
    </div>
        
</div>


</body>


<footer>
    <div class="annoucement">
        <div>
            <p>공지사항 </p><a href="#">
                <p>교보문고 개인정보 처리방침 변경 안내(5/11)</p>
        </div>
        <span>|</span>
        <div>
            <p>당첨자 발표 </p><a href="#">
                <p>[공통]한강 신작 산문집 『빛과 실』 알림 신청 이벤트 당첨자 발표</p>
        </div>
    </div>
    <div class="information">
        <div>
            <span>회원혜택</span><a href="#"><img src="img/69.png" alt="img69"></a>
            <ul>
                <li><a href="#">Prestige Lounge</a></li>
                <li><a href="#">신규회원 혜택</a></li>
                <li><a href="#">등급별 혜택</a></li>
                <li><a href="#">출석체크</a></li>
            </ul>
        </div>
        <div>
            <span>쇼핑 TIP</span>
            <ul>
                <li><a href="#">제휴포인트/상품권</a></li>
                <li><a href="#">교보문고 기프트카드</a></li>
                <li><a href="#">대량구매</a></li>
                <li><a href="#">리딩트리서비스(독서경영)</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </div>
        <div>
            <span>빠른 서비스</span>
            <ul>
                <li><a href="#">북클럽카드 등록</a></li>
                <li><a href="#">영수증 후 적립</a></li>
                <li><a href="#">교보캐시 조회·충전</a></li>
                <li><a href="#">교보e캐시 조회·충전</a></li>
                <li><a href="#">기프트카드 조회·충전</a></li>
                <li><a href="#">협력사 여러분</a></li>
            </ul>
        </div>
        <div>
            <span>교보문고 소식</span>
            <ul>
                <li><a href="#">인스타그램(교보문고)</a></li>
                <li><a href="#">인스타그램(인터넷교보문고)</a></li>
                <li><a href="#">페이스북(교보문고)</a></li>
                <li><a href="#">페이스북(인터넷교보문고)</a></li>
                <li><a href="#">트위터</a></li>
                <li><a href="#">유튜브</a></li>
            </ul>
        </div>
        <div>
            <span>FAQ</span><a href="#"><img src="img/69.png" alt="img69"></a>
            <ul>
                <li><a href="#">주문·결제</a></li>
                <li><a href="#">eBook</a></li>
                <li><a href="#">도서·상품정보</a></li>
                <li><a href="#">중고장터</a></li>
            </ul>
        </div>
    </div>
    <div class="main_footer">
        <div class="company1">
            <a href="#"><img src="img/8.png" alt="img8"></a>
            <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">이용약관</a></li>
                <li class="underline"><a href="#">개인정보처리방침</a></li>
                <li><a href="#">청소년보호정책</a></li>
                <li><a href="#">대량주문안내</a></li>
                <li><a href="#">협력사여러분</a></li>
                <li><a href="#">채용정보</a></li>
                <li><a href="#">광고소개</a></li>
            </ul>
            <div class="adress_info">
                <span>대표이사 : 안병현</span><span class="gap">|</span><span>서울특별시 종로구 종로 1</span><span
                    class="gap">|</span><span>사업자등록번호 : 102-81-11670</span><br>
                <span>대표전화 : 1544-1900(발신자 부담전화)</span><span class="gap">|</span><span>FAX : 0502-987-5711(지역번호
                    공통)</span><span class="gap">|</span><span> 서울특별시 통신판매업신고번호 : 제 653호</span>
                <button class="company_btn">사업자 정보확인<i class="fa-sharp fa-solid fa-chevron-right"></i></button>
            </div>
            <p>© KYOBO BOOK CENTRE</p>
        </div>
        <div class="company2">
            <button id="familySite" class="familySite">Family Site
                <img src="img/70.png" alt="img70">
                <ul id="family_list">
                    <li><a href="#">교보생명</a></li>
                    <li><a href="#">교보증권</a></li>
                    <li><a href="#">교보정보통신</a></li>
                    <li><a href="#">교보리얼코</a></li>
                    <li><a href="#">교보악사자산운용</a></li>
                    <li><a href="#">교보라이프플래닛생명</a></li>
                    <li><a href="#">KCA 손해사정</a></li>
                    <li><a href="#">KCA 서비스</a></li>
                    <li><a href="#">교보자산신탁주식회사</a></li>
                    <li><a href="#">대산문화재단</a></li>
                    <li><a href="#">교보교육재단</a></li>
                    <li><a href="#">대산농촌재단</a></li>
                    <li><a href="#">교보아카데미</a></li>
                </ul>
            </button>

            <a href="#"><img src="img/66.png" alt="img66"></a><a href="#"><img src="img/67.png" alt="img67"></a><a
                href="#"><img src="img/68.png" alt="img68"></a>
            <div>
                <span>LG U+ 구매안전서비스</span><button class="company_btn"> 서비스 가입 확인<i
                        class="fa-sharp fa-solid fa-chevron-right"></i></button>
                <p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한
                    LG유플러스의 구매안전서비스를 이용하실 수 있습니다.</p>
            </div>
            <div>
                <div><a ref="#"><span>정보보호관리체계</span><span>ISMS인증획득</span></a></div>
                <p>인증범위] 온라인 교보문고 서비스 운영<br>
                    [유효기간] 2020.11.04 ~ 2023.11.03</p>
            </div>
        </div>
    </div>

</footer>

</body>

</html>