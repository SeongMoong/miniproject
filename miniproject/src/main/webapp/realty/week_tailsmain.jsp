<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- ***type_info가져오는 view*** -->
		<form id="frm" method="get" action="./reservation.jsp">
  <input type="hidden" name="title" value="${result.bunyang_title}" />
	<div class="weektails">
		<p>분양정보</p>
		<div id="weektails">
			<p>${result.bunyang_title}</p>
            <ul>
                <li>종류</li>
                <li>${result.bunyang_part} | ${result.bunyang_info} </li>
                <li>주소</li>
				<li>${result.bunyang_addr}</li>
                <li>규모</li>
				<li>총 ${result.bunyang_scale}세대 | 총 ${result.bunyang_building}개동</li>
                <li>시기</li>
				<li>${result.bunyang_date} | ${result.bunyang_in}</li>
                <li>난방구조</li>
				<li>${result.bunyang_str}</li>
                <li>건설사</li>
				<li>${result.bunyang_company}</li>
                <li>사진정보</li>
				<li><img src="./room/${result.bunyang_img}"></li>
            </ul>
		</div>
        <div><button class="btn_css" onclick="reservation(1)">방문예약</button></div>
        <div><button class="btn_close" onclick="reservation(2)">방문예약완료</button></div>
	</div>
		</form>
	
<script>
function reservation(p){
	switch(p){
	case 1:
		frm.submit();
		//location.href='./reservation.jsp';
	break;
	case 2:
		location.href='./reservation_check.jsp'
	break;
	}
}
</script>