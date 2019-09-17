<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<style>
/* budget.jsp */
.monthLabel {
	width: 160px;
	display: inline-block;
	margin-bottom: 40px;
}
.monthLabel *{
	font-weight: bold;
	color: #505050;
}
.monthLabel div:first-child {
	font-size: 22px !important;
}
.monthLabel input{
	font-size: 20px !important;
	padding-left: 10px;
	width : 160px;
	height: 100%;
	border: 1px solid #FFF;
	cursor: default;
}
.monthLabel input:focus{
	cursor: text;
	outline: none;
}

.monthLabel hr{
	border-top: 2px solid; 
	margin: 5px 0;
}
.budgetResult .toInput{
	margin-left: 20px;
}
.space{
	width:60%;
	margin:auto;
}

</style>
<div class="space">

	<!-- 날짜 선택 -->
	<div style="width:10%; margin:auto;">
		&lt; 2019 &gt;
	</div>
	
	<input type="hidden" id="nowYear" name="nowYear" value="${saleVO.nowYear}">
	<!-- 1월 -->
	<div class="monthLabel">
		<div>Jan</div>
		<hr>
		<div><input type="text" class="inputSel" id="Jan" name="Jan" value="${Jan}" readOnly></div>
	</div>
	<!-- 2월 -->
	<div class="monthLabel">
		<div>Feb</div>
		<hr>
		<div><input type="text" class="inputSel" id="Feb" name="Feb" value="${Feb}" readOnly></div>
	</div>	
	<!-- 3월 -->
	<div class="monthLabel">
		<div>Mar</div>
		<hr>
		<div><input type="text" class="inputSel" id="Mar" name="Mar" value="${Mar}" readOnly></div>
	</div>
	<!-- 4월 -->
	<div class="monthLabel">
		<div>Apr</div>
		<hr>
		<div><input type="text" class="inputSel" id="Apr" name="Apr" value="${Apr}" readOnly></div>
	</div>
</div>

<div class="space">
	<!-- 5월 -->
	<div class="monthLabel">
		<div>May</div>
		<hr>
		<div><input type="text" class="inputSel" id="May" name="May" value="${May}" readOnly></div>
	</div>
	<!-- 6월 -->
	<div class="monthLabel">
		<div>Jun</div>
		<hr>
		<div><input type="text" class="inputSel" id="Jun" name="Jun" value="${Jun}" readOnly></div>
	</div>
	<!-- 7월 -->
	<div class="monthLabel">
		<div>Jul</div>
		<hr>
		<div><input type="text" class="inputSel" id="Jul" name="Jul" value="${Jul}" readOnly></div>
	</div>
	<!-- 8월 -->
	<div class="monthLabel">
		<div>Aug</div>
		<hr>
		<div><input type="text" class="inputSel" id="Aug" name="Aug" value="${Aug}" readOnly></div>
	</div>
</div>

<div class="space">
	<!-- 9월 -->
	<div class="monthLabel">
		<div>Sep</div>
		<hr>
		<div><input type="text" class="inputSel" id="Sep" name="Sep" value="${Sep}" readOnly></div>
	</div>
	<!-- 10월 -->
	<div class="monthLabel">
		<div>Oct</div>
		<hr>
		<div><input type="text" class="inputSel" id="Oct" name="Oct" value="${Oct}" readOnly></div>	
	</div>
	<!-- 11월 -->
	<div class="monthLabel">
		<div>Nov</div>
		<hr>
		<div><input type="text" class="inputSel" id="Nov" name="Nov" value="${Nov}" readOnly></div>
	</div>
	<!-- 12월 -->
	<div class="monthLabel">
		<div>Dec</div>
		<hr>
		<div><input type="text" class="inputSel" id="Dec" name="Dec" value="${Dec}" readOnly></div>
	</div>
</div>

<%@ include file="../footer.jsp" %>