<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ include file="../head.jsp" %>

<table width=1000 border=1>
	<tr>
		<td colspan=3>
		</td>
	</tr>
	<tr>
		<td width=10>
		</td>
		<td width=960>
			<table width=100%>
				<tr>
					<td width=16%>구매자
					</td>
					<td width=16%>판매자
					</td>
					<td width=16%>종류
					</td>
					<td width=16%>일정
					</td>
					<td width=16%>상태
					</td>
				</tr>
				<c:forEach var="goodsVO" items="${list}" varStatus="status">
					
					<tr>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.writer }</a>
						</td>
						<td>
							<c:forEach begin="${status.index}" end="${status.index}" var="list2" items="${list2}">
								${list2.comment_name } 
							</c:forEach>	
						</td>
						<td>${goodsVO.subject }
						</td>
						<td><fmt:formatDate value="${goodsVO.date}" pattern="yyyy년MM월dd일"/>						
						</td>
						<td>${goodsVO.processing }
						</td>
					</tr>
				</c:forEach>
			</table>
		</td>
		<td width=10>
		</td>
	</tr>
	<tr>
		<td colspan=3>
		</td>
	</tr>
</table>

<table border=1>
	<tr>
		<c:if test="${pageMaker.prev}">
			<td><a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></td>
		</c:if>
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<td>
				<c:if test="${pageMaker.cri.page == idx}"><b></c:if>
				<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
				<c:if test="${pageMaker.cri.page == idx}"></b></c:if>
			</td>
		</c:forEach>
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<td><a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></td>
		</c:if>
	</tr>
</table>

<%@ include file="../footer.jsp" %>