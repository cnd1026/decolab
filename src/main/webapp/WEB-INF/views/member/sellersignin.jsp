<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../head.jsp" %>
<script type="text/javascript">
function send() {
	if (signin.mem_id.value == "") {
		alert("아이디를 입력하세요.");
		signin.mem_id.focus();
		return false;
	}
	if (signin.mem_password.value == "") {
		alert("비번을 입력하세요.");
		signin.mem_password.focus();
		return false;
	}
	if (signin.mem_password_re.value != signin.mem_password.value) {
		alert("비밀번호가 같지 않습니다..");
		signin.mem_password_re.focus();
		return false;
	}
	if (signin.mem_name.value == "") {
		alert("이름을 입력하세요.");
		signin.mem_name.focus();
		return false;
	}
	if (signin.mem_mail.value == "") {
		alert("메일을 입력하세요.");
		signin.mem_mail.focus();
		return false;
	}
	if (signin.mem_code.value == "") {
		alert("사업자등록번호를 입력하세요.");
		signin.mem_code.focus();
		return false;
	}
	if (signin.mem_date.value == "") {
		alert("생년월일을 입력하세요.");
		signin.mem_date.focus();
		return false;
	}
	if (signin.mem_zip_code.value == "") {
		alert("주소를 입력하세요.");
		signin.mem_zip_code.focus();
		return false;
	}
	if (signin.mem_comment.value == "") {
		alert("경력을 입력하세요.");
		signin.mem_comment.focus();
		return false;
	}
}
</script>
<form id='registerForm' role="form" method="post">

<div style="width:60%; height:700px; margin:0 auto; padding-bottom:40px;">

	<div style="text-align:center; padding-top:30px; padding-bottom:40px">
		<b style="font-size:23px">Deco_LAB에 오신 것을 환영합니다</b>
	</div>
	
	<div style="display:table; width:100%;">
		<div style=" float:left; width:10%;  padding-top:20px;">
		
		<label for="exampleInputEmail1">프로필사진<br>drag&drop</label>
		<div class="fileDrop"><span class="uploadedList"></span></div>
		

		</div>
		<div style=" float:left; width:40%; ">
		
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
				<input type=password name="mem_password"style="width:90%; height:40px;">
			</div>
			
			<div style="padding-bottom:10px; padding-left:9%;">
				비밀번호확인
			</div>
			<div style="padding-bottom:25px; padding-left:9%">
				<input type=password style="width:90%; height:40px;">
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
		
		<div style=" float:left; width:40%; ">
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
	width: 100%;
	height: 100px;
	border: 1px dotted gray;
	text-align:center;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">

	<span><img src="{{imgsrc}}"></span>
	
		<a href="{{getLink}}">{{fileName}}</a>
		<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove">삭제</i></a>
	

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

