window.onload = function(){
	var http = new XMLHttpRequest;			
 	http.open("GET","./agree1.txt",false); 
	http.send();	//통신 실행
	document.getElementById("ag").innerHTML = http.response;
	
	//var http2 = new XMLHttpRequest;
	http.open("GET","./agree2.txt",false); 
	http.send();
	document.getElementById("ag2").innerHTML = http.response;
	
/* 	http.open("GET", "./agree1.txt", true);  // 비동기 요청 (true)
	http.onreadystatechange = function () { 
	    if (http.readyState === 4 && http.status === 200) {  
			document.getElementById("ag").innerHTML = http.response;
	    }
	};
			http.send(); */
}
function all_check(z){
	var ob = frm.agree;
	var ea = ob.length;
	console.log(ea);
	for(var w=0;w<ea;w++){
		ob[w].checked = z;
	}
}
function ag_check(){
	var ob = frm.agree;
	var ea = ob.length;
	var w=0;
	var count = 0;
	while(w < ea){
		if(ob[w].checked == true){
			count++;
		}
		w++;
	}
	if(ea == count){
		document.getElementById("all").checked = true;
	}
	else{
		document.getElementById("all").checked = false;
	}
}
let ck = /^\d{2,3}\d{3,4}\d{4}$/; //숫자 외에 다른 문자일 경우 false
function joinok(){
	if(frm.bemail.value==""){
		alert("이메일을 입력하세요.")
	}
	else if(frm.bpass.value==""){
		alert("비밀번호를 입력해주세요")
	}
	else if(frm.bpassck.value==""){
		alert("비밀번호 확인을 입력해주세요")
	}
	else if(frm.bname.value==""){
		alert("이름을 입력해주세요")
	}
	else if(frm.btel.value==""){
		alert("번호를 입력해주세요")
	}
	else if(frm.bpass.value != frm.bpassck.value){
		alert("입력한 비밀번호를 확인해주세요")
	}
	else if(ck.test(frm.btel.value) == false){
		alert("연락쳐를 정상적으로 입력하세요")
	}
	else if(frm.agree[0].checked==false){
		alert("필수 조건은 무조건 동의 하셔야만 회원가입이 진행 됩니다.");
	}else if(frm.agree[1].checked==false){
		alert("필수 조건은 무조건 동의 하셔야만 회원가입이 진행 됩니다.");
	}else if(frm.agree[2].checked==false){
		alert("필수 조건은 무조건 동의 하셔야만 회원가입이 진행 됩니다.");
	}else{
		frm.submit();
	}
}