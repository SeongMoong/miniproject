<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천분양 정보 게시판</title>
<link rel="stylesheet" type="text/css" href="./css/index.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/md_board_view.css?v=5">
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
<c:import url="./top.jsp"></c:import>
  <!--메뉴끝-->
<main>
<c:import url="./md_board_viewmain.jsp"></c:import>
</main>

<!-- 카피라이터 -->
 <footer>
<c:import url="./copyright.do"></c:import>
 </footer>
</body>
</html>