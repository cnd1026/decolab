<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="shortcut icon" href="/resources/images/favicon.ico">
<title>Deco_LAB</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
jQuery(document).ready(function() {
    jQuery('.tabs .tab-links a').on('click', function(e)  {
        var currentAttrValue = jQuery(this).attr('href');
 
        // Show/Hide Tabs
        jQuery('.tabs ' + currentAttrValue).show().siblings().hide();
 
        // Change/remove current tab to active
        jQuery(this).parent('li').addClass('active').siblings().removeClass('active');
 
        e.preventDefault();
    });
   
     
    jQuery('.nextButton').on('click', function() {
        
   var $activeTab = $('.tab-links li.active');
	 
	 var $wrapper = jQuery(this).closest('.tabs');
   var indexActive = $wrapper.find('li.active').index();
   $wrapper.find('li').eq(indexActive + 1).find('a').click();
});
    
     jQuery('.prevButton').on('click', function() {
        
   var $activeTab = $('.tab-links li.active');
	 
	 var $wrapper = jQuery(this).closest('.tabs');
   var indexActive = $wrapper.find('li.active').index();
   $wrapper.find('li').eq(indexActive - 1).find('a').click();
});
    
});
</script>
<style>
	html,body{ padding:0px; margin:0px; }
	a{text-decoration:none; color:black}
	.tabs {
    width:100%;
    display:inline-block;
   }

   .tabs h4 {
    color: #00447c;
    margin: 5px 0 15px 0;
    display: inline-block;
   }
 
  .tab-links:after {
    display:block;
    clear:both;
    content:'';
  }

  .tab-links {
    padding: 0;
    margin: 10px 0 0 0;
    position: relative;
    top: 2px;
  }

  .tab-links li {
    margin:0px 5px 0 0;
    float:left;
    padding-top: 2px;
    list-style:none;
  }

  .tab-links a {
    padding:9px 8px 6px;
    display:inline-block;
    background: #c7d8e8;
    border: 2px solid #c7d8e8;
    border-bottom: 3px solid #c7d8e8;
    font-size: 10.5px;
    font-weight:600;
    color:#00447c;
    transition:all linear 0.15s;
  }
  
  .tab-links button	{
  	padding:9px 8px 6px;
    display:inline-block;
    background: #c7d8e8;
    border: 2px solid #c7d8e8;
    border-bottom: 3px solid #c7d8e8;
    font-size: 10.5px;
    font-weight:600;
    color:#00447c;
    transition:all linear 0.15s;
  }
  
  .zip_code	{
  	padding:3px 5px 3px 5px;
    display:inline-block;
    background: #c7d8e8;
    border: 2px solid #c7d8e8;
    border-bottom: 3px solid #c7d8e8;
    font-size: 10.5px;
    font-weight:600;
    color:#00447c;
    transition:all linear 0.15s;
  }

  .tab-links a:hover {
    background: #a7cce5;
    text-decoration:none;
    border: 2px solid #a7cce5;
    border-bottom: 3px solid #a7cce5;  
    color: #ee3124;
  }

  li.active a, li.active a:hover {
    background:#fff;
    height: 16px;
    border-bottom: none;
    color: #ee3124;
  }

  .tab-content, .uploaded-documents-container {
    padding:15px;
    border-radius:3px;
    border: 2px solid #c7d8e8;
    background:#fff;
    font-size: .95em;
  }

  .tab-content-scroll {
    max-height: 675px;
    min-height: 675px;
    max-width: 1100px;
    min-width: 450px;
    overflow: auto;
    clear:both;
  }

  .tab-content-scroll-home {
    min-height: 135px;
  }

  .button-bar-scroll {
    min-height: 235px;
  }

  .tab-content-scroll>p {
    margin-top: 0;
    padding-right: 12px;
  }

  .tab-content a {
    margin-top: 10px;
    color: #00447c;
  }

  .tab {
    display:none;
  }

  .tab.active {
    display:block;
  }
</style>
</head>
<body>
<div style="width:100%; height:70px; display:flex; border-bottom:0.5px solid gray;">
<c:choose>
	<c:when test="${sessionScope.mem_id  == null}">
	<div style="width:10%"><a href="/"><img src="/resources/images/decologo.png" style="width:50%;height:70px;"></a></div>
	<div style="width:70%; height:1px"></div>
	<div style="width:8%"><a href="/member/sellersignin">판매자 가입</a></div>
	<div style="width:7%"><a href="/member/signin">회원가입</a></div>
	<div style="width:5%"><a href="/member/login">로그인</a></div>
	
	</c:when>
	<c:otherwise>
	<div style="width:10%"><a href="/"><img src="/resources/images/decologo.png" style="width:50%;height:70px;"></a></div>
	<p>이름:${sessionScope.mem_name }</p>&nbsp;&nbsp;
<p>id:${sessionScope.mem_id }</p>&nbsp;&nbsp;
<p>level:<c:if test="${sessionScope.mem_level  == '1'}">일반회원</c:if>
<c:if test="${sessionScope.mem_level  == '2'}">판매자</c:if>
<c:if test="${sessionScope.mem_level  == '10'}">운영자</c:if>

</p>
<!-- 일반회원 -->
<c:if test="${sessionScope.mem_level  == '1'}">&nbsp;&nbsp;&nbsp;<div style="width:5%"><a href="/"></a></div>
<div style="width:5%"><a href="/member/modify">정보수정</a></div>
<div style="width:5%"><a href="/member/dogenemy?mem_name=${sessionScope.mem_name}">견적보기</a></div>
<div style="width:5%"><a href="/member/logout">로그아웃</a></div>
</c:if>
<!--  -->
<!-- 판매자 -->
<c:if test="${sessionScope.mem_level  == '2'}">

<div style="width:5%"><a href="/"></a></div>
<div style="width:5%"><a href="/member/info?mem_id=${sessionScope.mem_id}">나의 경력</a></div>&nbsp;&nbsp;
<div style="width:5%"><a href="/goods/order">견적요청</a></div>&nbsp;&nbsp;
<div style="width:5%"><a href="/member/sellermodify">정보수정</a></div>&nbsp;&nbsp;
<div style="width:5%"><a href="/member/logout">로그아웃</a></div>

</c:if>
<!--  -->
<!-- 운영자 -->
<c:if test="${sessionScope.mem_level  == '10'}">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div style="width:5%"><a href="/admin/membermanagement">회원관리</a></div>
<div style="width:5%"><a href="/account/yearsales">정산</a></div>
<div style="width:5%"><a href="/member/sellermodify">정보수정</a></div>
<div style="width:5%"><a href="/goods/processing">견적상황</a></div>
<div style="width:5%"><a href="/member/logout">로그아웃</a></div>
<div style="width:5%"><a href="/member/info?mem_id=${sessionScope.mem_id}">내정보</a></div>
</c:if>
<!--  -->
</c:otherwise>
</c:choose>
</div>