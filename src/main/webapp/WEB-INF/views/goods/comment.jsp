<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript">
//var goods_no = '${goodsVO.goods_no}'; //게시글 번호 
//댓글 목록 
    
    commentList();

function commentList(){
	var bno = '${goodsVO.goods_no}'; //게시글 번호
	//bno = number(bno);
	console.log("====bno===");
	console.log(bno);
	
    $.ajax({
        type : 'get',
        url : '/comment/list/'+bno,
        contentType: "application/json;charset=UTF-8",
        success : function(comment){
        	//console.log("====리스트 테스트===");
        	var seller = $('#comment_id').val();
        	
        	$(".commentList").empty();
        	$.each(comment, function(index, comment){
            var a =''; 
          //  console.log("TEST");
         //   console.log(comment.goods_no);
    		//console.log(${sessionScope.mem_id});
            
    		//체크박스 하나만 선택할수 있게
			$(document).ready(function() {
			    $('input[type="checkbox"][name="progress"]').click(function(){
			        //click 이벤트가 발생했는지 체크
			        if ($(this).prop('checked')) {
			            //checkbox 전체를 checked 해제후 click한 요소만 true지정
			            $('input[type="checkbox"][name="progress"]').prop('checked', false);
			            $(this).prop('checked', true);
			        }
			    });
			});
    		//기본적으로 그냥 회원일때
            if (${sessionScope.mem_level.equals("1")}){	
            	//console.log("레벨이 1 그리고");
            	//console.log("test중입니다.");
            	a += '<form id="updateProgressForm" name="updateProgressForm"><div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
            	a += '<label><div class="commentInfo'+comment.comment_no+'" id="progress">'+' 작성자 : '+comment.comment_name + '<p class="card-subtitle mb-2 text-muted"><small> <input type="checkbox" value="'+comment.comment_no+'" name="progress" id="progress">입찰금액 : ('+ comment.comment_price +' 원)</small></p>';
            	a += '<div class="commentContent'+comment.comment_no+'"> <p>'+comment.comment_content +'</p></div>';
            	a += '</div></label><button name="updateProgressBtn" type="button" id="updateProgressBtn" class="btn btn-info btn-sm" onclick="updateProgress();">견적채택</button></div></form>';
            }else{            	
            	var contentV = comment.comment_content.replace(/(?:\r\n|\r|\n)/g, '<br>');
            	console.log("레벨이 10 또는 2 그리고");
            	console.log("아이디가 일치하냐 안하냐");	
            	
	            	if ( ${sessionScope.mem_id} == comment.comment_id || ${sessionScope.mem_level == 10}){
	            		console.log("세션 아이디와 작성자가 일치 할 경우");
	            		a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
		        		a += '<div class="commentInfo'+comment.comment_no+'">'+' 작성자 : '+comment.comment_name + '<a href="#" onclick="commentDelete('+comment.comment_no+');"> 삭제</a>' + '<a href="#" onclick="commentUpdate('+comment.comment_no+',\''+contentV+'\',\''+comment.comment_price+'\');"> 수정</a>'; 
		        		a += '</div>';
		        		a += '<div class="commentContent'+comment.comment_no+'"><p><small> 입찰금액 : ('+ comment.comment_price +' 원)</small></p><br> <p id="comp">'+comment.comment_content +'</p>';
		        		a += '<input type="hidden" name="comment_price" id="comment_price" value="'+comment.comment_price+'"></div></div>';
	            	}else{
	            		a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
		        		a += '<div class="commentInfo'+comment.comment_no+'">'+' 작성자 : 볼 수 없습니다.'; 
		        		a += '</div>';
		        		a += '<div class="commentContent'+comment.comment_no+'"><p><small> 입찰금액 : (볼 수 없습니다.)</small></p><br> <p id="comp">다른 판매자의 견적을 볼 수 없습니다.</p>';
	            	}
        		}
            	
		
		       // console.log("====리스트 테스트 마지막 부분===");
            $(".commentList").append(a);
            });
        }
    });
}

//견적 채택
	function updateProgress() {
        var updateProgress = [];
        $("input[name='progress']:checked").each(function(i){
        	updateProgress.push($(this).val());
        });
       // console.log(updateProgress);
       // alert(updateProgress);
        var bno2 = '${goodsVO.goods_no}';
       // alert(bno2);
       // alert(updateProgress);
        
        
        $.ajax({
            url : '/comment/updateProgress/'+updateProgress,
            type : 'get',
            contentType: "application/json;charset=UTF-8",
            data : {'updateProgress' :updateProgress, 'bno2':bno2},
            success : function(data){
            	//console.log(data);
                if(data) commentList();                     
            }
        });
    //});
    //commentList(); //페이지 로딩시 댓글 목록 출력     
}
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(comment_no, comment_content, comment_price){
    var a ='';
    console.log(comment_price);
    var contentV = comment_content.split('<br>').join("\r\n");
    var contentW = contentV.split('</a>').join("");
    a += '<div class="input-group">';
    //a += '<input type="text" class="form-control" name="cmtContent_'+cmtNum+'" value="'+cmtContent+'"/>';
    a += '<input id="comment_price" name="comment_price_'+comment_no+'" class="form-control" value="'+comment_price+'"><br>';
    a += '<textarea name="comment_content_'+comment_no+'" class="form-control" rows="4" cols="70" placeholder="내용을 입력하세요.">'+ contentW +'</textarea>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+comment_no+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+comment_no).html(a);
    
}
//댓글 수정
function commentUpdateProc(comment_no){
    var updateContent = $('textarea[name=comment_content_'+comment_no+']').val();
    var comment_price = $('input[name=comment_price_'+comment_no+']').val();
    console.log(updateContent);
    console.log(comment_price);
    $.ajax({
        url : '/comment/update',
        type : 'post',
        data : {'comment_content' : updateContent, 'comment_price' : comment_price, 'comment_no' : comment_no},
        success : function(data){
            if(data) commentList(comment_no); //댓글 수정후 목록 출력 
        }
    });
} 
 
//댓글 삭제 
function commentDelete(comment_no){
    $.ajax({
        url : '/comment/delete/'+comment_no,
        type : 'post',
        success : function(data){
            if(data) commentList(comment_no); //댓글 삭제후 목록 출력 
        }
    });
}
$(function() {
    $("#insertCommentBtn").click(function(){ //댓글 등록 버튼 클릭시 
        var insertData = $("#insertCommentForm").serialize(); //insertCommentForm의 내용을 가져옴
        //alert(JSON.stringify(insertData));
        
        $.ajax({
            url : '/comment/insertVisitor',
            type : 'post',
            data : insertData,
            success : function(data){
            	//console.log(data);
                if(data) {
                    commentList(); //댓글 작성 후 댓글 목록 reload
                    $('#comment_content').val('');
                    $('#comment_price').val('');
                }
            }
        });
    });
    commentList(); //페이지 로딩시 댓글 목록 출력 
    
})
</script>

<c:if test="${sessionScope.mem_level==2 || sessionScope.mem_level==10}">
<div class="container">
	<label for="cmtContent">견적</label>
	<form name="insertCommentForm" id="insertCommentForm">
		<div class="input-group">
			<input type="hidden" id="goods_no" name="goods_no" value="${goodsVO.goods_no }" />
			<input type="hidden" id="writer" name="writer" value="${goodsVO.writer }" />
			<input type="hidden" id="comment_id" name="comment_id" value="${sessionScope.mem_id }" />
			<input type="hidden" id="comment_name" name="comment_name" value="${sessionScope.mem_name }" />
			<%-- ${goodsVO.goods_no },${sessionScope.mem_id },${sessionScope.mem_name } --%>
			<input name="comment_price" id="comment_price" class="form-control" placeholder="원하는 가격을 입력하세요" style="width:160px; height:25px;"><br>
			<textarea name="comment_content" id="comment_content" class="form-control"
				rows="4" cols="70" placeholder="ex)니스 대신 들기름으로 마감, 쇠못 대신 나무못으로 마감 등"></textarea>
			<button class="btn btn-default" type="button"
					name="insertCommentBtn" id="insertCommentBtn">등록</button>
		</div>
	</form>
</div>
</c:if>
<br>
<div class="container">
	<div class="commentList" style="white-space: pre;"></div>
</div>







