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
}

</script>

<form name="signin" onsubmit="return send()" method="post">
<div style="width:30%; height:700px; margin:0 auto; padding-bottom:40px;">

	<div style="text-align:center; padding-top:30px; padding-bottom:40px">
		<b style="font-size:23px">Deco_LAB에 오신 것을 환영합니다</b>
	</div>
	
	<div style="border:1px solid gray; border-radius:4px;">
		<div style="padding-bottom:10px; padding-left:9%; padding-top:20px;">
			아이디
		</div>
		<div style="padding-bottom:25px; padding-left:9%;">
			<input name="mem_id" id="mem_id" type="text"style="width:90%; height:40px;" />
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
			<input type=password name="mem_password_re" style="width:90%; height:40px;">
		</div>
		
		<div style="padding-bottom:10px; padding-left:9%;">
			이름
		</div>
		<div style="padding-bottom:25px; padding-left:9%">
			<input name="mem_name"style="width:90%; height:40px;">
		</div>
		
		<div style="padding-bottom:10px; padding-left:9%;">
			메일 주소
		</div>
		<div style="padding-bottom:25px; padding-left:9%">
			<input name="mem_mail"style="width:90%; height:40px;">
		</div>
		
		<div style="padding-bottom:25px; padding-left:9%">
			<button type="submit"style="width:91%; height:45px; border:1px solid#4A7BF8;
							background-color:#4A7BF8; color:white; cursor:pointer;" >
							무료가입
			</button>
		</div>
		
	</div>
</div>
</form>

<%@ include file="../footer.jsp" %>

