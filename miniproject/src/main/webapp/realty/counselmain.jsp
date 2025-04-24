<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form id="frm" method="post" action="./counsel.do">
<section class="sub">
<p>상담신청</p>
<div>
<span class="list_title">◎ <span style="color: blue;">상담자 정보</span></span>
<ul class="sub_ul">
<li>상담자명</li>    
<li><input type="text" class="sel_input" name="bname" value="${suser.bname}" readonly></li> 
<li>이메일</li>    
<li><input type="text" class="sel_input" name="bemail" value="${suser.bemail}" readonly></li> 
<li>연락처</li>    
<li><input type="text" class="sel_input" name="btel" value="${suser.btel}" readonly></li> 
<li>임대형태</li>    
<li>
<label><input type="checkbox" class="sel_check" name="brent" value="rent1"> 공공임대</label>
<label><input type="checkbox" class="sel_check" name="brent" value="rent2"> 민간임대</label>
<label><input type="checkbox" class="sel_check" name="brent" value="rent3"> 민간분양</label>
<label><input type="checkbox" class="sel_check" name="brent" value="rent4"> 기타</label>
</li>   
<li>주거형태</li>    
<li>
<label><input type="checkbox" class="sel_check" name="blive" value="live1"> 아파트</label>
<label><input type="checkbox" class="sel_check" name="blive" value="live2"> 빌라,단독주택</label>
<label><input type="checkbox" class="sel_check" name="blive" value="live3"> 사무실.상가.빌딩</label>
</li>       
<li>상담일시</li>    
<li>
<input type="date" class="sel_input2" name="bday" id="bday"> * 해당 일시에 맞춰서 담당자가 연락 드립니다.   
</li>    
<li>상담내용</li>    
<li style="height: 150px !important; line-height: 150px;">
<textarea class="sel_input3" placeholder="구체적인 상담내용을 입력해 주세요" name="bsubject"></textarea>
</li>
</ul>
</div>
<div><input type="button" value="상담신청" onclick="counselbtn()"></div>
</section>
</form>
<script>
document.addEventListener("DOMContentLoaded", function () {
    const today = new Date();
    const yyyy = today.getFullYear();
    const mm = String(today.getMonth() + 1).padStart(2, '0');
    const dd = String(today.getDate()).padStart(2, '0');
    const minDate = `${yyyy}-${mm}-${dd}`;
    document.getElementById("bday").min = minDate;
});

function counselbtn() {
	frm.submit();
}
</script>