<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./head.jsp" %>


<div style="width:100%; height:300px; border-top:0.5px solid gray; display:flex; padding-top:20px;">
	<div style="width:15%;height:1px"></div>
	<!-- 요청서들어갈곳 -->
	<div class="tabs">
		<ul class="tab-links">
			<li class="active"><a href="#tab1">종류</a></li>
			<li><a href="#tab2">크기</a></li>
			<li><a href="#tab3">재질</a></li>
			<li><a href="#tab4">색상</a></li>
			<li><a href="#tab5">디자인</a></li>
			<li><a href="#tab6">날짜</a></li>
			<li><a href="#tab7">요구사항</a></li>
			<li><a href="#tab8">서비스</a></li>
			<li><a href="#tab9">주소</a></li>
		</ul>
		<form action="/goods/register" method="post">
		<input type="hidden" name="writer" value="${sessionScope.mem_name }">
		<div class="tab-content" style="height:180px;">
			<div id="tab1" class="tab active">
				<h4>종류</h4>
				<br>
				<select name="subject" style="width:150px; height:30px;">
					<option value=""></option>
					<option value="">ㅡ침실가구ㅡ</option>
					<option value="침대">침대</option>
					<option value="옷장">옷장</option>
					<option value="서랍장">서랍장</option>
					<option value="화장대">화장대</option>
					<option value="">ㅡ거실가구ㅡ</option>
					<option value="거실장">거실장</option>
					<option value="쇼파">쇼파</option>
					<option value="좌탁">좌탁</option>
					<option value="신발장">신발장</option>
					<option value="">ㅡ서재가구ㅡ</option>
					<option value="책상">책상</option>
					<option value="책장">책장</option>
					<option value="">ㅡ주방가구ㅡ</option>
					<option value="식탁">식탁</option>
					<option value="의자">의자</option>
				</select>
				<ul class="tab-links">
					<li><a href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab2" class="tab">
				<h4>크기</h4><br>
				<input type="text" name="size" style="width:400px; height:30px;" placeholder="ex)60*100*120(가로*세로*높이)">
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab3" class="tab">
				<h4>재질</h4><br>
				<select name="material" style="width:150px; height:30px;">
					<option value=""></option>
					<option value="편백나무">편백나무</option>
					<option value="참나무">참나무</option>
					<option value="소나무">소나무</option>
					<option value="스테인리스">스테인리스</option>
					<option value="천연대리석">천연대리석(초고가)</option>
				</select>
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab4" class="tab">
				<h4>색상</h4><br>
				<input type="text" name="color" style="width:400px; height:30px;" placeholder="ex)자연색그대로 또는 빨간색 또는 로즈골드 등">
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab5" class="tab">
				<h4>디자인</h4><br>
				<input type="text" name="design_file" style="width:400px; height:30px;" placeholder="ex)장인에게 맡긴다 또는 아래 디자인파일 업로드">
				<div><label for="exampleInputEmail1">사진을 이곳에 올려주세요</label>				
					<div class="fileDrop"></div>				
					<ul class="uploadedList"></ul>				
				</div>
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab6" class="tab">
				<h4>원하는 날짜</h4><br>
				<input type="text" name="wantday" style="width:400px; height:30px;" placeholder="ex)19년9월20일 이전 또는 장인과 협의 등">
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab7" class="tab">
				<h4>요구사항</h4><br>
				<input type="text" name="comment" style="width:400px; height:30px;" placeholder="ex)니스 대신 들기름으로 또는 철못 대신 나무못 등">
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab8" class="tab">
				<h4>서비스</h4><br>
				추가적인 서비스는 요구사항으로 돌아가서 작성해주세요<br>
				<select name="service" style="width:150px; height:30px;">
					<option value=""></option>
					<option value="필요없어요">필요없어요</option>
					<option value="철거">철거</option>
					<option value="수거">수거</option>
					<option value="배송 및 설치">배송 및 설치</option>
				</select>
				<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a> <a
						href="#next_tab2" class="nextButton">Next</a></li>
				</ul>
			</div>

			<div id="tab9" class="tab">
				<h4>주소</h4><br>
					<input type="text" name="zip_code"
						id="sample4_postcode" placeholder="우편번호">
					<input type="button" class="zip_code" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name=addr1 id="sample4_roadAddress"
						placeholder="도로명주소">
					<input type="text" name=addr2 id="sample4_jibunAddress" placeholder="지번주소"> <span
						id="guide" style="color: #999; display: none"></span>
					<input type="text" name=addr3 id="sample4_detailAddress" placeholder="상세주소">
					<input type="text" name=addr4 id="sample4_extraAddress"	placeholder="참고항목">
					<ul class="tab-links">
					<li><a href="#back_tab1" class="prevButton">Prev</a>
					<button type="submit" >견적요청하기</button></li>
				</ul>
			</div>			
		</div>
		</form>
	</div>
	<!-- 요청서끝 -->
	<div style="width:30%; padding-left:30px;">
		Deco_lab은어떤곳인가요?<br>
		<a href="/goods/order">[목록Page]</a> <br>
		<a href="/goods/processing">[진행목록Page]</a><br>
		<a href="/goods/finished">[완료목록Page]</a><br>
		<a href="#" onclick="myList();">[나의목록Page]</a>
	</div>
	<div style="width:15%;height:1px"></div>
</div>

<div style="width:100%; border-bottom:0.5px solid gray; padding-top:20px; padding-bottom:20px;">	
	<div style="width:100%; text-align:center;">
		요청서를 보낸 후 어떻게 진행되는지 알려드릴게요
	</div>
	<div style="width:70%; display:table; margin:0 auto;">
		<img src="resources/images/ex.png" style="width:100%">
	</div>
	<div style="width:70%; display:table; margin:0 auto;">
		<!-- 진행내용 -->
	</div>
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>
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

	$("#goodsForm").submit(function(event){
		event.preventDefault();	

		var that = $(this);
		var str ="";

		$(".uploadedList .delbtn").each(function(index){
			str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
		});

		that.append(str);
		that.get(0).submit();
		//수정
	});
	
	//	
	function myList()	{
			var member_id = '${sessionScope.mem_name}';
			//alert(member_id);
			$.ajax({
	            url : '/goods/myList',
	            type : 'get',
	            data : {'mem_id' : member_id},
	            success : function(data){	                 
	            }
	        });
			alert("ㄹㄹㄹ");
			return "redirect:/goods/myList";
			alert("ㅎㅎㅎ");
		};		
	
	
	
</script>
<%@ include file="./footer.jsp" %>