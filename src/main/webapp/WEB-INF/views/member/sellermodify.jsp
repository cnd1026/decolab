<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../head.jsp" %>

<form method="post">
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
				<input name="mem_id" value="${sessionScope.mem_id}" readonly="readonly" style="width:90%; height:40px;">
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
					정보수정
				</button>
			</div>
		</div>
		
	</div>
</div>
</form>

<%@ include file="../footer.jsp" %>

