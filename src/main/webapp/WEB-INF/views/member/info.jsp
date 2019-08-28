<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!-- 추가 끝 -->
<table border=1>
	<tr>
		<td width=70>아이디</td>
		<td width=500>${member2VO.mem_id }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${member2VO.mem_name }</td>
	</tr>
	<tr>
		<td>경력</td>
		<td>${member2VO.mem_comment }</td>
	</tr>
</table>
<!-- 추가 시작 2 --> 
<!-- 첨부파일 출력 부분 추가 -->
<ul class="mailbox-attachments clearfix uploadedList"></ul>

<!-- 첨부파일 출력에 관한 스크립트 -->

<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
	<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
	<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</div>
</li>
</script> 

<script>
//첨부파일 정보
	var mem_id = ${member2VO.mem_id};
	var template = Handlebars.compile($("#templateAttach").html());	

	$.getJSON("/member/getAttach/"+mem_id,function(list){
		
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
<!-- 추가 끝 2 --> 

<%@ include file="../footer.jsp" %>