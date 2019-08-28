<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<br><br>
<table width=1130 class="table-striped table-bordered" align=center style="text-align:center;">
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
	<tr>
		<td width="120" height=30>종류
		</td>
		<td width="260">${goodsVO.subject }
		</td>
		<td width="120">사이즈
		</td>
		<td width="260">${goodsVO.size }
		</td>
		<td width="120">재질
		</td>
		<td width="260">${goodsVO.material }
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
	<tr>
		<td height=30>색상
		</td>
		<td>${goodsVO.color }
		</td>
		<td>디자인
		</td>
		<td>${goodsVO.design_file }
		</td>
		<td>원하는 날짜
		</td>
		<td>${goodsVO.wantday }
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
	<tr>
		<td width=130 height=30>요구사항
		</td>
		<td>${goodsVO.comment }
		</td>
		<td>서비스
		</td>
		<td>${goodsVO.service }
		</td>
		<td>주소
		</td>
		<td>${goodsVO.addr1 }
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
	<tr>
		<td colspan=6 align=center>디자인 사진 파일
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
	<tr>
		<td colspan=6 align=center><img src="https://placehold.it/480x360" alt="" class="img-rounded" width="480" height="360">
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
</table>
<%@ include file="./comment.jsp" %>
<br><br><br>
<a href="/board/modifyPage?page=${cri.page}&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">[수정]</a>
<a href="/board/removePage?page=${cri.page}&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">[삭제]</a>
<a href="/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}">[목록]</a>
<br><br><br><br><br>



<%@ include file="../footer.jsp" %>