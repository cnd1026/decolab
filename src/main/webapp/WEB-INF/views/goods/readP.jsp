<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<!-- 추가 시작 1 -->
<script type="text/javascript" src="/resources/js/upload.js"></script>

<!-- 두 스크립트 상단으로 올려줌 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- 이미지를 보여주기 위해 화면상 히든 처리 -->
<style type="text/css">
.popup { position: absolute;}
.back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
.front {
	z-index:1110; opacity:1; boarder:1px; margin: auto; 
}
.show{
	position:relative;
	max-width: 1200px; 
	max-height: 800px; 
	overflow: auto;       
}
</style>

<div class='popup back' style="display:none;"></div>
<div id="popup_front" class='popup front' style="display:none;">
	<img id="popup_img">
</div>

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
		<td colspan=6 align=center>
			<!-- 첨부파일 출력 부분 추가 -->
			<table class="mailbox-attachments clearfix uploadedList"></table>
		</td>
	</tr>
	<tr>
		<td colspan=6 height=3 style="border:0px;">
		</td>
	</tr>
</table>

<!-- 첨부파일 출력에 관한 스크립트 -->
<script id="templateAttach" type="text/x-handlebars-template">
<td data-src='{{fullName}}'>
<table>
<tr>
	<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment" ></span>
	<td class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">크게보기</a>
	</td>
</tr>
</table
</td>
</script> 

<%@ include file="./comment.jsp" %>
<br><br><br>
<a href="/board/modifyPage?page=${cri.page}&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">[수정]</a>
<a href="/board/removePage?page=${cri.page}&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">[삭제]</a>
<a href="/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}">[목록]</a>
<br><br><br><br><br>


<script>
//첨부파일 정보
	var goods_no = ${goodsVO.goods_no};
	var template = Handlebars.compile($("#templateAttach").html());	

	$.getJSON("/goods/getAttach/"+goods_no,function(list){
		
		$(list).each(function(){		

			var fileInfo = getFileInfo(this);
			var html = template(fileInfo);			

			 $(".uploadedList").append(html);		
		});
	});	

	//파일첨부 히든 영역에 큰 이미지로 보여주기
	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){

		var fileLink = $(this).attr("href");	

		if(checkImageType(fileLink)){			

			event.preventDefault();
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);			

			console.log(imgTag.attr("src"));					

			$(".popup").show('slow');
			imgTag.addClass("show");
		}
	});	

	$("#popup_img").on("click", function(){
		$(".popup").hide('slow');
	});
</script>

<%@ include file="../footer.jsp" %>