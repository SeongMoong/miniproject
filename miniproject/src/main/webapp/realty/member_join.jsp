<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="./css/index.css?v=7">
  <link rel="stylesheet" type="text/css" href="./css/member_join.css?v=3">
<style>
.box {
   width: 800px;
   height: 300px;
   border: 1px solid black;
   overflow: auto;
}
</style>
<title>회원가입</title>
</head>
<body>
<cr:import url="./top.jsp"></cr:import>


<main>
<cr:import url="./member_joinmain.jsp"></cr:import>
</main>

<!-- 카피라이터 -->
 <footer>
 <cr:import url="./copyright.jsp"></cr:import>
 </footer>
</body>
<script src="./js/member_join.js?v=1"></script>
</html>