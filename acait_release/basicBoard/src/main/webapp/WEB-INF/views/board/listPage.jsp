<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
</head>
<body>
	<div id="nav">
	 <%@ include file="../include/nav.jsp" %>
	</div>
	<table>
	 <thead>
	  <tr>
	   <th>번호</th>
	   <th>제목</th>
	   <th>작성일</th>
	   <th>작성자</th>
	   <th>조회수</th>
	  </tr>
	 </thead>
	 
	 <tbody>
	  <c:forEach items="${list}" var="list">
		 <tr>
		  	<td>${list.bno}</td>
			<td><a href="/board/listPageSearch?bno=${list.bno}">${list.title}</a></td>
			<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
			<td>${list.writer}</td>
			<td>${list.viewCnt}</td>
		 </tr>
		</c:forEach>
		

	 </tbody>
	
	</table>
	
	<div>
		<c:if test="${page.prev}">
			 <span>[ <a href="/board/listPageSearch?num=${page.startPageNum - 1}">이전</a> ]</span>
		</c:if>
		
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		  <span>

			 
				  <c:if test="${select != num}">
				   <a href="/board/listPageSearch?num=${num}">${num}</a>
				  </c:if>    
				  
				  <c:if test="${select == num}">
				   <b>${num}</b>
				  </c:if>
			    
		 </span>
		</c:forEach>


		
		<c:if test="${page.next}">
		 <span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ]</span>
	</c:if>
	</div>
	
	<%-- <div>
	 <c:forEach begin="1" end="${pageNum}" var="num">
	    <span>
	     <a href="/board/listPage?num=${num}">${num}</a>
	  </span>
	 </c:forEach>
	</div> --%>
</body>
</html>