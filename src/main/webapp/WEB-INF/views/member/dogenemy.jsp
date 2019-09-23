<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../head.jsp" %>


<table border=1 style="text-align:center; width:100%; " class="table-striped table-bordered">
	<tr>
	<td colspan="5" style="text-align:left">
			<b>구매중</b>
		</td>
	</tr>
	<tr>
		<td>
			종류
		</td>
		<td>
			재질
		</td>
		<td>
			색상
		</td>
		<td>
			배송날짜
		</td>
		<td>
			진행상황
		</td>
	</tr>
	<tr>
		<td>
		
			<c:forEach var="goods" items="${goods}">
			<c:if test="${goods.processing=='입찰중'}">
			<input type="hidden" id="goods_no" name="goods_no" value="${goods.goods_no }" />			
		<tr>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.subject }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.material }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.color }</a>
		</td>
		
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.wantday }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.processing }</a>
		</td>
	</tr>
		</c:if>
		<c:if test="${goods.processing=='입금전'}">
			<input type="hidden" id="goods_no" name="goods_no" value="${goods.goods_no }" />			
		<tr>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.subject }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.material }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.color }</a>
		</td>
		
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.wantday }</a>
		</td>
		<td>
			<a href="/goods/readP?goods_no=${goods.goods_no}">${goods.processing }</a>
		</td>
	</tr>
		</c:if>
</c:forEach>
		
		</td>
	</tr>
</table>
<table border=1 style="text-align:center; width:100%; " class="table-striped table-bordered">
	<tr>
		<td colspan="5" style="text-align:left">
			<b>구매완료</b>
		</td>
	</tr>
	<tr>
		<td>
			종류
		</td>
		<td>
			재질
		</td>
		<td>
			색상
		</td>
		<td>
			배송날짜
		</td>
		<td>
			진행상황
		</td>
	</tr>
	<tr>
		<td>		
			<c:forEach var="goods" items="${goods}">
			<c:if test="${goods.processing=='완료'}">
		<tr>
		<td>
			${goods.subject }
		</td>
		<td>
			${goods.material }
		</td>
		<td>
			${goods.color }
		</td>
		
		<td>
			${goods.wantday }
		</td>
		<td>
			${goods.processing }
		</td>
	</tr>
	</c:if>
</c:forEach>
			
</table>
<%@ include file="../footer.jsp" %>