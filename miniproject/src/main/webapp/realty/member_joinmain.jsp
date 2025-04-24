<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<form id="frm" method="post" action ="./memeber_joinok.do">
		<p>이메일로 회원가입</p>
		<div>
			<a>이메일</a> <input type="text" placeholder=" 이메일 주소를 입력해주세요." autocomplete="none" style="width:400px; float:left;" name="bemail"> <input type="button" value="중복체크" class="mail_btn">
		</div>
		<div>
			<a>비밀번호</a> <input type="password" placeholder=" 10~16자(영문,숫자,특수 문자 조합)로 입력해주세요." autocomplete="none" name="bpass">
		</div>
		<div>
			<a>비밀번호 확인</a> <input type="password"  placeholder=" 비밀번호를 다시 한 번 입력해주세요." autocomplete="none" name="bpassck">
		</div>
		<div>
		    <a>이름</a> <input type="text" placeholder=" 이름을 입력해주세요." autocomplete="none" name="bname">
		</div>
		<div>
		    <a>휴대폰번호</a> <input type="text" placeholder=" -없이 숫자만 입력해주세요." autocomplete="none" name="btel" maxlength="11">
		</div>
		<div>
		<input type="checkbox" id="all" onclick="all_check(this.checked)"> <span>전체 동의</span> </div>
		
		<div class="line"></div>
		
	<div class="bottom">	
		<div class="box1"><input type="checkbox" onclick="ag_check()" value='Y' name="agree"> <a class="a1">(필수) <span>만 14세 이상입니다.</span></a></div>
		<div class="box2"><input type="checkbox" onclick="ag_check()" value='Y' name="agree"> <a class="a2">(필수) <span><u>이용약관</u>에 동의</span></a></div>
		<div class="box3"><input type="checkbox" onclick="ag_check()" value='Y' name="agree"> <a class="a3">(필수) <span><u>개인정보 수집 및 이용</u>에 동의</span></a></div>
		<section class="text1" id=ag>   </section>
		<div class="box4"><input type="checkbox" name="agree" value='Y' onclick="ag_check()"> <span>(선택) 마케팅 수신에 동의</span></div>
		<section class="text2" id=ag2>   </section>
	</div>
		<div><input type="button" value="가입 하기" onclick="joinok()"></div>
	</form>
