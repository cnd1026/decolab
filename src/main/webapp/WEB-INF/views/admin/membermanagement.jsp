<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../head.jsp" %>
<table border=1>
	<tr>
		<td>
			아이디
		</td>
		<td>
			비밀번호
		</td>
		<td>
			이름
		</td>
		<td>
			메일주소
		</td>
		<td>
			가입날짜
		</td>
		<td>
			등급
		</td>
	</tr>
<c:forEach var="mem" items="${list}">
	<tr>
		<td>
			${mem.mem_id }
		</td>
		<td>
			${mem.mem_password }
		</td>
		<td>
			${mem.mem_name }
		</td>
		<td>
			${mem.mem_mail }
		</td>
		<td>
			${mem.regdate }
		</td>
		<c:if test="${mem.mem_level == 1}">
		<td>
			일반회원
		</td>
		</c:if>
		<c:if test="${mem.mem_level == 2}">
		<td>
			판매회원
		</td>
		</c:if>
		<c:if test="${mem.mem_level == 10}">
		<td>
			나
		</td>
		</c:if>
	</tr>
</c:forEach>
</table>
<%@ include file="../footer.jsp" %>