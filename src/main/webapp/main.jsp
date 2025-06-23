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

<head>
    <title>교보문고</title>
    <link href="css/main.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <link href="css/reset.css" rel="stylesheet">
    <link href="css/Login.css" rel="stylesheet">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.0.min.js"></script>
    <script src="./js/subSlider.js"></script>
    <script src="./js/aiPick.js"></script>
    <script src="./js/todayPick.js"></script>
    <script src="./js/new.js"></script>
    <script src="./js/md.js"></script>
    <script src="./js/kyobo.js"></script>
    <script src="./js/pod.js"></script>
    <script src="./js/casting.js"></script>
    <script src="./js/best.js"></script>

<meta charset="UTF-8">
</head>

<body>
    <header>
		<div class="logo-wrap">
		  <div class="logo"  style="width:1200px;">
		    <a href="#"><img src="img/1.jpg" alt="img1"></a>
		  </div>
		</div>


        <div class="inventory">
            <div class="left_inventory">
                <ul class="inventory_wrap">

                    <li>
                        <a href="#">
                            <span>교보문고</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span>eBook</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span>sam</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span>핫트랙스</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span>톡소다</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
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
                <li><a href="#">책의날특집</a></li>
                <li><a href="#">한강산문집</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">바로펀딩</a></li>
                <li><a href="#">PICKS</a></li>
                <li><a href="#">CASTing</a></li>
                <li><a href="#">컬처라운지</a></li>
            </ul>

            <ul class="nav_list_sub">
                <li><a href="#">오늘의 미션</a></li>
                <li><a href="#">할인혜택</a></li>
                <li><a href="#">제13회 스토리대상 </a></li>
            </ul>

        </nav>
    </header>

    <section>


        <div class="slider">

            <div class="main_slider_wrap">
                <ul class="main_slider">

                    <li><img src="img/33.png" alt="img33"></li>

                    <li><img src="img/29.png" alt="img29"></li>


                    <li><img src="img/30.png" alt="img30"></li>


                    <li><img src="img/31.png" alt="img31"></li>

                    <li><img src="img/32.png" alt="img32"></li>
                </ul>

                <span class="prev">&lt;</span>
                <span class="next">&gt;</span>
            </div>


            <div id="sub_slider_wrap">
                <div id="sub_slide">
                    <ul class="sub"></ul>
                </div>
            </div>
        </div>

        <div class="icon">

            <ul class="icon_menu">

                <li>
                    <a href="sub.jsp"><img src="img/9.PNG" alt="img9"></a>
                    <span>할인혜택</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/14.PNG" alt="img14"></a>
                    <span>오늘만특가</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/15.PNG" alt="img15"></a>
                    <span>책그리고꽃</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/16.PNG" alt="img16"></a>
                    <span>음반ㆍ영상</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/17.PNG" alt="img17"></a>
                    <span>바로출판</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/18.PNG" alt="img18"></a>
                    <span>이달의책</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/19.PNG" alt="img19"></a>
                    <span>손글씨캠페인</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/20.PNG" alt="img20"></a>
                    <span>사은품</span>
                </li>

                <li>
                    <a href="sub.jsp"><img src="img/21.PNG" alt="img21"></a>
                    <span>추천</span>
                </li>

                <li>
                    <a href="sub.sub.jsp"><img src="img/22.PNG" alt="img22"></a>
                    <span>APP혜택</span>
                </li>

            </ul>


            <div class="chulcheck">
                <a href="#"><img src="img/23.png" alt="img23">
            </div>

        </div>

        <!--오늘의 선택-->
        <div class="today_pick">
            <div class="title_today">
                <p>오늘의 선택</p>
                <ul id="todayMenu">
                    <li class="purple">전체 </li>
                    <li>국내도서 </li>
                    <li>외국도서 </li>
                    <li>eBook </li>
                    <li>sam </li>
                    <li>핫트랙스 </li>
                    <li>교보ONLY</li>
                </ul>
                <span class="learn_more">더보기 <i class="fa-regular fa-plus"></i> </span>
            </div>
            <div id="bigToday">
                <ul class="Today_box1">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box2">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box3">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box4">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box5">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box6">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
                <ul class="Today_box7">
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                    <li>
                        <div><img></div>
                        <div class="bigText"><span>eBook</span></div>
                    </li>
                </ul>
            </div>
            <div id="smallToday">
                <ul class="smallToday1">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday2">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday3">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday4">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday5">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday6">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="smallToday7">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <i class="fa-solid fa-chevron-left" id="btnL_today" class="arrow_left">&lt;</i>
            <i class="fa-solid fa-chevron-right" id="btnR_today" class="arrow_left">&gt;</i>
        </div>

        <!--첫번째 배너-->
        <div class="first_img">
            <div class="first_img_one">
                <a href="#"><img src="img/24.png" alt="img24"></a>
            </div>

            <div class="first_img_two">
                <a href="#"><img src="img/25.png" alt="img25"></a>
            </div>

        </div>

        <!--new-->
        <div class="new">
            <h2 class="new_title">신작 산문집이 곧 출간돼요</h2>
            <div class="slider_outer">
                <button class="new_prev">&lt;</button>
                <div class="new_slider_wrap">
                    <ul class="new_slide"></ul>
                </div>
                <button class="new_next">&gt;</button>
            </div>
        </div>

        <div class="md">
            <div class="md_title">
                <p>MD들이 신중하게 골랐어요</p>
                <ul id="md_sub_title">
                    <li><a href="sub.jsp">전체 </a></li>
                    <li><a href="sub.jsp">국내도서 </a></li>
                    <li class="purple"><a href="sub.jsp">외국도서 </a></li>
                    <li><a href="sub.jsp">eBook </a></li>
                    <li><a href="sub.jsp">sam </a></li>
                    <li><a href="sub.jsp">핫트랙스 </a></li>
                    <li><a href="sub.jsp">교보ONLY</a></li>
                </ul>

            </div>
            <div class="md_box">
                <ul class="md_box1">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box2">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box3">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box4">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box5">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box6">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>
                <ul class="md_box7">
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                    <li><a href="sub.jsp"></a></li>
                </ul>

                <i class="fa-solid fa-chevron-left" id="btnL_md">&lt;</i>
                <i class="fa-solid fa-chevron-right" id="btnR_md">&gt;</i>
            </div>
            
            <!--두번째 배너-->
            <div class="mid_img">

                <div class="mid_img_one">
                    <a href="sub.jsp"><img src="img/26.png" alt="img26"></a>
                </div>

                <div class="mid_img_two">
                    <a href="sub.jsp"><img src="img/27.png" alt="img27"></a>
                </div>

            </div>


            <!--ai Pick-->
            <div class="ai_pick">
                <div class="ai_pick_left">
                    <img src="img/34.PNG" alt="img34">
                    <span class="learn_more">더보기</span>
                    <p>발견의 기쁨을 선물합니다.</p>
                    <p>취향을 분석해 꼭 맞는 책을 추천해드릴게요!</p>
                    <button>로그인하고 더 많은 추천 받기</button>
                </div>

                <ul class="ai_pick_list"></ul>
            </div>

            <!--best-->
            <div class="kb_best">
                <div>
                    <ul id="kb_best">
                        <li class="black">베스트</li>
                        <li>|</li>
                        <li>스테디</li>
                    </ul>
                    <ul id="bestSeller" class="best_menu">
                        <li class="purple">전체 </li>
                        <li>국내도서 </li>
                        <li>외국도서 </li>
                        <li>eBook</li>
                        <li>sam</li>
                        <li>핫트랙스</li>
                        <li>교보ONLY</li>
                    </ul>
                    <ul id="steadySeller" class="best_menu">
                        <li class="purple">국내도서</li>
                        <li>외국도서</li>
                    </ul>
                    <span class="learn_more">더보기 <i class="fa-regular fa-plus"></i> </span>
                </div>
                <div class="kb_best_list">
                    <ul class="list_box1">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i>
                                <a href="sub.jsp"><img>
                                    <p></p>
                                </a>
                                <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box2">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box3">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box4">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box5">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><span class="red"><i class="fa-sharp fa-solid fa-caret-up"></i> 10</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><span class="red"><i class="fa-sharp fa-solid fa-caret-up"></i> 2</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i> 1</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i> 1</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><span class="red"><i class="fa-sharp fa-solid fa-caret-up"></i> 12</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i> 3</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6><span> -</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i> 3</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><span class="blue"><i class="fa-sharp fa-solid fa-caret-down"></i> 3</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box6">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box7">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box8">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6><span> -</span>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                    <ul class="list_box9">
                        <li>
                            <h6>1</h6><img src="img/71.png" alt="img71">
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>2</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>3</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>4</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>5</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>6</h6><i class="fa-sharp fa-solid fa-caret-up"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>7</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>8</h6>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>9</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                        <li>
                            <h6>10</h6><i class="fa-sharp fa-solid fa-caret-down"></i>
                            <a href="sub.jsp"><img>
                                <p></p>
                            </a>
                            <span></span>
                        </li>
                    </ul>
                </div>
            </div>

            <!--교보문구 버튼 클릭시 배너 움직임 다시보기-->
            <div class="kyobo">
                <h2 class="kyobo_title">교보문구에서만 만날 수 있어요</h2>
                <div class="kyobo_outer">
                    <button class="kyobo_prev">&lt;</button>
                    <div class="kyobo_slider_wrap">
                        <ul class="kyobo_slide"></ul>

                    </div>
                    <button class="kyobo_next">&gt;</button>
                </div>
            </div>


            <!--마지막배너-->
            <div class="last_img">
                <div class="last_img">
                    <a href="sub.jsp"><img src="img/28.png" alt="img28"></a>
                </div>
            </div>


            <!--pod-->
            <div class="pod">
                <h2 class="pod_title">바로출판POD</h2>
                <div class="pod_outer">
                    <button class="pod_prev">&lt;</button>
                    <div class="pod_slider_wrap">
                        <ul class="pod_slide"></ul>
                    </div>
                    <button class="pod_next">&gt;</button>
                </div>
            </div>


            <!--캐스팅-->
            <div class="casting">
                <h2 class="casting_title">CASTing</h2>
                <div class="casting_outer">
                    <button class="casting_prev">&lt;</button>
                    <div class="casting_slider_wrap">
                        <ul class="casting_slide"></ul>
                    </div>
                    <button class="casting_next">&gt;</button>
                </div>
            </div>

            <!--이벤트 슬라이드-->
            <div class="event">
                <div class="event_title">
                    <span>이벤트정성이 달라요</span>
                    <ul class="event_menu">
                        <li>교보문고</li>
                        <li>|</li>
                        <li>eBook</li>
                        <li>|</li>
                        <li>핫트랙스</li>
                    </ul>
                </div>

                <button id="event_prev">&lt;</button>
                <button id="event_next">&gt;</button>

                <div class="event_wrap">
                    <ul class="event_image">
                        <li><a href="#"><img src="img/42.png" alt="img42"></a></li>
                        <li><a href="#"><img src="img/43.png" alt="img43"></a></li>
                        <li><a href="#"><img src="img/44.png" alt="img44"></a></li>
                        <li><a href="#"><img src="img/45.png" alt="img45"></a></li>
                        <li><a href="#"><img src="img/46.png" alt="img46"></a></li>
                        <li><a href="#"><img src="img/47.png" alt="img47"></a></li>
                    </ul>
                </div>
            </div>

    </section>


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


    <script>


        /*main_slider*/
        function mainPrev() {
            $('.main_slider li:last').prependTo('.main_slider');
            $('.main_slider').css('margin-left', -1000);
            $('.main_slider').stop().animate({ marginLeft: 0 }, 800);
        }

        function mainNext() {
            $('.main_slider').stop().animate({ marginLeft: -1000 }, function () {
                $('.main_slider li:first').appendTo('.main_slider');
                $('.main_slider').css({ marginLeft: 0 });
            });
        }

        function mainAutoSlide() {
            $('.main_slider').stop().animate({ marginLeft: -1000 }, function () {
                $('.main_slider li:first').appendTo('.main_slider');
                $('.main_slider').css({ marginLeft: 0 });
            });
        }

        // 버튼 이벤트 연결
        $('.prev').click(function () {
            mainPrev();
        });
        $('.next').click(function () {
            mainNext();
        });

        /*서브슬라이드*/
        let slideWidth1 = 270;

        function slide() {
            $('.sub').stop().animate({ left: -slideWidth1 }, 400, function () {
                $('.sub li:first').appendTo('.sub');
                $('.sub').css({ left: 0 });
            });
        }

        function prev() {
            $('.sub li:last').prependTo('.sub');
            $('.sub').css({ left: -slideWidth1 });
            $('.sub').stop().animate({ left: 0 });
        }

        function next() {
            $('.sub').stop().animate({ left: -slideWidth1 }, function () {
                $('.sub li:first').appendTo('.sub');
                $('.sub').css({ left: 0 });
            });
        }

        setInterval(slide, 4000);

        /*오늘의선택*/
        $(function () {


            $(".Today_box1").show().siblings().hide();
            $(".smallToday1").show().siblings().hide();

            $("#todayMenu > li").click(function (event) {
                event.preventDefault();
                let i = $(this).index() + 1;
                $(".Today_box" + i).show().siblings("ul").hide();
                $(this).addClass("purple").siblings().removeClass("purple");
                $(".Today_box" + i + "> li").find("span").eq(0).text($(this).text());
                $(".smallToday" + i).show().siblings("ul").hide();
            });

            let i = 0


            function nextToday() {
                let num = $("#todayMenu .purple").index() + 1;
                $('.smallToday' + num).stop().animate({ marginLeft: -150 }, function () {
                    $('.smallToday' + num + ' > li:first').appendTo('.smallToday' + num);
                    $('.smallToday' + num).css({ marginLeft: 0 });
                });
                $(".Today_box" + num).stop().animate({ marginLeft: -632 }, function () {
                    $(".Today_box" + num + ' > li:first').appendTo(".Today_box" + num);
                    $(".Today_box" + num).css({ marginLeft: 0 });
                });
            };

            function prevToday() {
                let num = $("#todayMenu .purple").index() + 1;
                $('.smallToday' + num + '> li:last').prependTo('.smallToday' + num);
                $('.smallToday' + num).css({ marginLeft: -150 });
                $('.smallToday' + num).stop().animate({ marginLeft: 0 },);

                $(".Today_box" + num + '> li:last').prependTo(".Today_box" + num);
                $(".Today_box" + num).css({ marginLeft: -150 });
                $(".Today_box" + num).stop().animate({ marginLeft: 0 },);
            };

            $("#btnR_today").click(function () {
                nextToday();
            });
            $("#btnL_today").click(function () {
                prevToday();
            });

        })



        /*이벤트슬라이드*/
        let eventIndex = 0;
        const visibleCount = 3;
        const itemWidth = 400;
        const $eventImage = $(".event_image");
        const totalItems = $(".event_image li").length;

        $("#event_next").click(function () {
            if (eventIndex < totalItems - visibleCount) {
                eventIndex++;
                $eventImage.animate({ marginLeft: -eventIndex * itemWidth }, 400);
            }
        });

        $("#event_prev").click(function () {
            if (eventIndex > 0) {
                eventIndex--;
                $eventImage.animate({ marginLeft: -eventIndex * itemWidth }, 400);
            }
        });

    </script>
</body>

</html>