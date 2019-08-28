<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../head.jsp" %>

<form id='registerForm' role="form" method="post">
<table>
	<tr>
		<td>파일첨부</td>

		<td><label for="exampleInputEmail1">File DROP Here</label>

			<div class="fileDrop"></div>

			<ul class="uploadedList"></ul>

		</td>
		</tr>
</table>
<div style="width:60%; height:700px; margin:0 auto; padding-bottom:40px;">

	<div style="text-align:center; padding-top:30px; padding-bottom:40px">
		<b style="font-size:23px">Deco_LAB에 오신 것을 환영합니다</b>
	</div>
	
	<div style="border:1px solid gray; border-radius:4px; display:table; width:100%">
		<div style=" float:left; width:50%; ">
		
			<div style="padding-bottom:10px; padding-left:9%; padding-top:20px;">
				아이디
			</div>
			<div style="padding-bottom:25px; padding-left:9%;">
				<input name="mem_id"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				비밀번호
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_password"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				비밀번호확인
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				이름
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_name"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				이메일
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_mail"style="width:90%; height:40px;">
			</div>
		</div>
		
		<div style=" float:left; width:50%; ">
			<div style="padding-bottom:10px; padding-left:9%; padding-top:20px;">
				사업자등록번호
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_code"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				생년월일
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_date"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				주소
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_zip_code"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				경력
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input name="mem_comment"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-top:30px; padding-left:9%">
				<button type="submit"style="width:91%; height:45px; border:1px solid#4A7BF8;
										background-color:#4A7BF8; color:white; cursor:pointer;" >
					무료가입
				</button>
			</div>
		</div>
		
	</div>
</div>
</form>
<style>
.fileDrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
	<span><img src="{{imgsrc}}"></span>
	<div>
		<a href="{{getLink}}">{{fileName}}</a>
		<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove">삭제</i></a>
	</div>
</li>
</script>

<script>
	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event){
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event){
		event.preventDefault();	

		var files = event.originalEvent.dataTransfer.files;
		var file = files[0];
		var formData = new FormData();	

		formData.append("file", file);		
		$.ajax({
			url: '/uploadAjax',
			data: formData,
			dataType:'text',
			processData: false,
			contentType: false,
			type: 'POST',
			success: function(data){
				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);			  

				$(".uploadedList").append(html);
			}
		});	
	});

	$("#registerForm").submit(function(event){
		event.preventDefault();	

		var that = $(this);
		var str ="";

		$(".uploadedList .delbtn").each(function(index){
			str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
		});

		that.append(str);
		that.get(0).submit();
	});

</script>
<%@ include file="../footer.jsp" %>

