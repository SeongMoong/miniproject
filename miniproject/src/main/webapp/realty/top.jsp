<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    if ("1".equals(request.getParameter("logout"))) {
        session.invalidate();
%>
        <script>
        alert("로그아웃 되셨습니다.");
            location.href = "index.jsp"; // 파라미터 없이 새로 이동
        </script>
<%
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천분양 정보 게시판</title>
<link rel="stylesheet" type="text/css" href="./css/index.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/md_board_view.css?v=6">
<style>
.box {
   width: 800px;
   height: 300px;
   border: 1px solid black;
   overflow: auto;
}
</style>
</head>
<body>

<!--최상단-->
 <header>
  <div class="top_banner"></div>
 </header>
  <!--최상단끝-->
 <!--메뉴-->
 <nav>
  <div class="menus">
    <ul class="menus_ul">
		<li onclick="location.href='index.jsp'" style="cursor:pointer;">
		  <img src="./logo/e_click_logo.png">
		</li>
      <li>일반매물</li>
      <li>추천매물</li>
      <li>중계의뢰</li>
      <li><a href="./counsel.jsp">상담신청</a></li>
      <li>업체의뢰</li>
      <li>의뢰현황</li>
      <li class="logins" onmouseleave="myinfo_menu(2)">
        <span title="회원정보" onclick="myinfo_menu(1)">
        <img src="./ico/login.svg">
        <ul class="login_info" id="login_info" style="display: none;">
        <c:if test="${empty suser}">
            <li><a href="./login.jsp">로그인 / 회원가입</a></li>
		</c:if>
		<c:if test="${not empty suser}">
			<li>
			  ${suser.bname}님 
			  <a href="?logout=1">[로그아웃]</a>
			</li>
		</c:if>
        </ul>
        </span>
        <span title="모델 하우스 사전예약 리스트" onclick="reserve_page()"><img src="./ico/reserve_list.svg"></span>
      </li>
    </ul>
  </div>
 </nav>
 <script>
    //해당 함수는 모델 하우스 사전 방문예약 확인 리스트 페이지로 이동 되도록 합니다.
    function reserve_page() {
        const isLogin = ${not empty suser}; // 서버에서 suser 유무 체크해서 JS 변수에 반영

        if (!isLogin) {
            alert("로그인 후 이용 가능합니다.");
            location.href = "./login.jsp";
        } else {
            location.href = "./reservation_list.jsp";
        }
    }
    function myinfo_menu(part){
        var log_menu = document.getElementById("login_info");
        if(part==1){
            if(log_menu.style.display == "none"){
                log_menu.style.display = "block"; 
            }
            else{
                log_menu.style.display = "none"; 
            }
        }
        else{
            log_menu.style.display = "none"; 
        }
    }
 </script>
  <!--메뉴끝-->
</body>
</html>