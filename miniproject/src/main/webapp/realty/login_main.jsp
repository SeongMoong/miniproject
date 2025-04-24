<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <form id="frm" method="post" action="./login.do">
	<aside class="login_pg">	
		<p>이메일로 시작하기</p>
		<div><input type="text" name="bemail" placeholder="이메일 주소"></div>
		<div><input type="password" name="bpass" placeholder="비밀번호"></div>
		<div><input type="button" value="로그인" onclick="logincheck()"></div>
		<div><input type="button" value="카카오로그인" class="kakao_btn"></div>
		<div>
			<span><a href="member_join.jsp">회원가입</a></span>
			<span><a href="email_search.jsp">이메일 찾기</a></span>
			<span>비밀번호 찾기</span>
		</div>
	</aside>
	</form>
<script>
function logincheck(){
	 frm.submit();
}
</script>