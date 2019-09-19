<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>

<script type="text/javascript">
function send() {
	if (login.mem_id.value == "") {
		alert("아이디를 입력하세요.");
		signin.mem_id.focus();
		return false;
	}
	if (signin.mem_password.value == "") {
		alert("비번을 입력하세요.");
		signin.mem_password.focus();
		return false;
	}
}
</script>
<form id='login' onsubmit="return send()" action="/member/loginPost" method="post">

<table>
	<tr>
		<td width=90 align=right>아이디 :</td>
		<td><input type="text" name="mem_id" class="form-control" placeholder="USER ID"/></td>
	</tr>
	<tr>
		<td align=right>비밀번호 :</td>
		<td><input type="password" name="mem_password" class="form-control" placeholder="Password"/></td>
	</tr>
	<tr>
		<td align=right></td>
		<td><button type="submit" class="btn btn-primary btn-block btn-flat btn-login">로그인</button></td>
	</tr>
</table>

</form>

<%@ include file="../footer.jsp" %>