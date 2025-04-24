<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="frm" method="post" action="./email_search.do"> <!-- search_myinfo.jsp  email_search.do-->
<section class="sub">
<div>
<ul>
<li>이메일 찾기</li>
<li>비밀번호 찾기</li>
</ul>
</div>
<div class="text1">
<div><input type="text" placeholder="이름을 입력하세요" name="bname"></div>
<div><input type="text" placeholder="휴대폰 번호는 - 빼고 숫자만 입력하세요" maxlength="11" name="btel"></div>
</div>
<div><input type="button" value="이메일 찾기" onclick="esearch()"></div>
</section>
</form>

<script>
function esearch() { //보안해야함 (휴대폰 번호 길이 등등)
	if(frm.bname.value==""){
		alert("이름을 입력하세요")
	}
	else if(frm.btel.value==""){
		alert("휴대폰 번호를 입력해주세요")
	}
	else{
	frm.submit();
	}
}
</script>