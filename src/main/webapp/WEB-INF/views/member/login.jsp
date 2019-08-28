<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>

<form id='loginForm' action="/member/loginPost" method="post">

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