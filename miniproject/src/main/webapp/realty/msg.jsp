<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="co" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("${msg3}");
	location.href="${url}";
</script>
${msg}
${msg2} <!-- 가입하신 정보는 확인 되지 않습니다. -->
</body>
</html>