<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../head.jsp" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style>
/* budget.jsp */
.monthLabel {
	width: 160px;
	display: inline-block;
	margin-bottom: 40px;
	margin-left: 75px;
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
	margin: 10px 0;
}
.budgetResult .toInput{
	margin-left: 20px;
}
.space{
width:65%;
margin:auto;
min-width:1000px;
}
.2019{

}
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}

</style>
<script>
	
</script>

<div class="space" float=left;>
	<!-- 날짜 선택 -->
	<div style="width:15%; margin:auto; padding-left:39px;font-size: 22px !important; align:center;margin-bottom: 30px;margin-top: 30px;">
		&lt; 2019 &gt;
	</div>
	
	<input type="hidden" id="nowYear" name="nowYear" value="${saleVO.nowYear}">
	<!-- 1월 -->
	<div class="monthLabel">
		<div>1월</div>
		<hr>
		<c:choose>
			<c:when test="${empty Jan}">
				<div><input type="text" class="inputSel" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Jan}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- 2월 -->
	<div class="monthLabel">
		<div>2월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Feb}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Feb}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
	</div>	
	<!-- 3월 -->
	<div class="monthLabel">
		<div>3월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Mar}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Mar}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 4월 -->
	<div class="monthLabel">
		<div>4월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Apr}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Apr}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
</div>

<div class="space">
	<!-- 5월 -->
	<div class="monthLabel">
		<div>5월</div>
		<hr>
			<c:choose>
			<c:when test="${empty May}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${May}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 6월 -->
	<div class="monthLabel">
		<div>6월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Jun}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Jun}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 7월 -->
	<div class="monthLabel">
		<div>7월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Jul}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Jul}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 8월 -->
	<div class="monthLabel">
		<div>8월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Aug}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Aug}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
</div>

<div class="space">
	<!-- 9월 -->
	<div class="monthLabel">
		<div>9월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Sep}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Sep}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 10월 -->
	<div class="monthLabel">
		<div>10월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Oct}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Oct}" pattern="#,###"/>원
				</div>	
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 11월 -->
	<div class="monthLabel">
		<div>11월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Nov}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Nov}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- 12월 -->
	<div class="monthLabel">
		<div>12월</div>
		<hr>
			<c:choose>
			<c:when test="${empty Dec}">
				<div><input type="text" class="inputSel" id="Jan" name="Jan" value="0" readOnly></div>
			</c:when>
			<c:otherwise>
				<div>
					<fmt:formatNumber value="${Dec}" pattern="#,###"/>원
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
</div>

<div style="width:65%; margin:auto;">
	<div style="width:50%; height:50px;float:right;text-align:right;">
		<h5>총매출<fmt:formatNumber value="${totalsales}" pattern="#,###"/>원</h5>
		<h5>총이익<fmt:formatNumber value="${budget*0.15}" pattern="#,###"/>원</h5>
	</div>
	<div style="width:50%;  height:50px;float:right;">
	
	</div>
	<form id='choicesales' action="/account/yearsales">
	<div style="width:50%; height:50px;float:right;" id="choicesales">
		<h5>${date }매출<fmt:formatNumber value="${choicesales}" pattern="#,###"/>원</h5>
	</div>
	<div style="width:50%; height:50px;float:right;">
		일별 매출 검색: <input type="text" id="datepicker" name="datepicker" value="${date }" readOnly>
		<button type="submit">검색</button>
	</div>
	</form>
<%@ include file="./sales.jsp" %>
</div>
    <script>
	    $(document).ready(function(){
            //input을 datepicker로 선언
            $("#datepicker").datepicker({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+0D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });                    
            
            //초기값을 오늘 날짜로 설정
            $('#datepicker').datepicker(); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)             
        });
    </script>
<%@ include file="../footer.jsp" %>