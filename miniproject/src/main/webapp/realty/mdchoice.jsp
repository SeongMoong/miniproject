<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div class="recommend">
      <p>추천분양정보<br><em><a href="./md_board.jsp">실시간 추천 분양정보를 한곳에!</a></em></p>
 <c:forEach var="data" items="${mdlist}" varStatus="idx">
      <div class="md_estates">
        <ul>
      	  <a href="${data.bunyang_link}" target="_blank">
        	  <li>
        	    <div><img src="./md_room/${data.bunyang_img}" ></div>
        	    <span>${data.bunyang_title}</span>
        	    <div>${data.bunyang_subject}</div>
       		  </li>
          </a>
        </ul>
      </div>
    </c:forEach>
    </div>
    
