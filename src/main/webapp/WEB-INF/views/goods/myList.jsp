<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../head.jsp" %>


<table width=1000 border=0 align=center>
	<tr>
		<td colspan=3>
		</td>
	</tr>
	<tr>
		<td width=10>
		</td>
		<td width=960>
			<table width=100% border=1 style="text-align:center;" width=1130 class="table-striped table-bordered">
				<tr>
					<td width=13%>종류
					</td>
					<td width=13%>크기
					</td>
					<td width=13%>재질
					</td>
					<td width=13%>일자
					</td>
					<td width=36%>주소
					</td>
					<td width=8%>상태
					</td>
				</tr>
				<c:forEach var="goodsVO" items="${list}">
				<c:if test="${sessionScope.mem_name} == goodsVO.writer ">
					<tr>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.subject }</a>
						</td>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.size }</a>
						</td>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.material }</a>
						</td>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}"><fmt:formatDate value="${goodsVO.date}" pattern="yyyy년MM월dd일"/></a>
						</td>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.addr1 }</a>
						</td>
						<td><a href="/goods/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&goods_no=${goodsVO.goods_no}">${goodsVO.processing }</a>
						</td>
					</tr>
				</c:if>
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
<br><br>
<table align=center class="table-hover">
	<tr>
		<c:if test="${pageMaker.prev}">
			<td><a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }" style="color:blue;">&laquo;</a></td>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<td style="font-color:blue;">
				<c:if test="${pageMaker.cri.page == idx}"><b></c:if>
				<a href="order${pageMaker.makeQuery(idx)}" style="color:blue;">${idx}</a>
				<c:if test="${pageMaker.cri.page == idx}"></b></c:if>
			</td>
		</c:forEach>

		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<td><a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }" style="color:blue;">&raquo;</a></td>
		</c:if>
	</tr>
</table>

<br><br><Br>







<%@ include file="../footer.jsp" %>