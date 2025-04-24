<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="co" uri="http://java.sun.com/jsp/jstl/core"%>
    <div class="weekdays">
      <p>금주분양 매물정보<br><em>이번주 신규 매물정보!</em></p>
<co:forEach var="data" items="${typelist}" varStatus="idx">
      <div class="week_estates">
        <ul>
          <li onclick="goview('${data.bunyang_index}')" value="${data.bunyang_index}"style="cursor: pointer;">
            <a><span>매매</span></a>
            <div>${data.bunyang_title}</div>
            <aside>${data.bunyang_addr}</aside>
            <span>${data.bunyang_part} | ${data.bunyang_info}</span>
            <label>${data.bunyang_date} | ${data.bunyang_in}</label>
            <div><img src="./room/${data.bunyang_img}" style="width:300px; height:200px;"></div>
          </li>
        </ul>
      </div>
</co:forEach>
    </div>
    
<script>
function goview(no){
	location.href="./week_tails.do?bunyang_index="+no;
}
</script>