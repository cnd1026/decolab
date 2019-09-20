<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>

<script type="text/javascript">
function send() {
	if (login.mem_id.value == "") {
		alert("아이디를 입력하세요.");
		login.mem_id.focus();
		return false;
	}
	if (login.mem_password.value == "") {
		alert("비번을 입력하세요.");
		login.mem_password.focus();
		return false;
	}
}
</script>
<form id='login' onsubmit="return send()" action="/member/loginPost" method="post">
<table align="center">
	<tr>
		<td width=300><img src="/resources/images/decologo.png" style="width:300px;height:300px;"></td>
	</tr>
</table>
<table align="center" style="margin-bottom:100px; margin-top:50px;">
	<tr>
		<td width=250><input type="text" name="mem_id" class="form-control" placeholder="ID"/></td>
	</tr>
	<tr>
		<td width=250><input type="password" name="mem_password" class="form-control" placeholder="Password"/></td>
	</tr>
	<tr>
		<td width=250><button type="submit" class="btn btn-primary btn-block btn-flat btn-login">로그인</button></td>
	</tr>
</table>

</form>

<%@ include file="../footer.jsp" %>