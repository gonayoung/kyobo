<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/shopping.css">
    <link href="css/header.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <link href="css/reset.css" rel="stylesheet">
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
    </header>
  
  
    <div id="wrap" align="center">
      <h1>고객센터</h1>
      <table class="list">
        <tr>
          <td colspan="5" style="border: white; text-align: right">
          <a  href="BoardServlet?command=board_write_form">게시글 등록</a></td>
        </tr>
        <tr style="color: white;">
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
          <th>조회</th>
        </tr>
        <c:forEach var="board" items="${boardList }">
          <tr class="record">
            <td>${board.num }</td>
            <td><a href="BoardServlet?command=board_view&num=${board.num}">
              ${board.title } </a></td>
            <td>${board.username}</td>
            <td><fmt:formatDate value="${board.writedate }" /></td>
            <td>${board.readcount}</td>
          </tr>
        </c:forEach>
      </table>
    </div>
    
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