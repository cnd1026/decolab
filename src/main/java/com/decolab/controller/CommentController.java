package com.decolab.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.decolab.domain.CommentVO;
import com.decolab.domain.Member2VO;
import com.decolab.service.CommentService;

@RestController
@RequestMapping(value = "/comment/*")
public class CommentController {
 
    private final Logger log = LoggerFactory.getLogger(this.getClass());
 
    @Autowired
    private CommentService commentService;
 
  //댓글 리스트
//  @GetMapping("/list/{bno}")
  	@RequestMapping(value = "/list/{bno}" , method = RequestMethod.GET)
  	@ResponseBody
  	public List<CommentVO> replyList(@PathVariable("bno")int bno, HttpSession session) throws Exception{
  		//log.info("댓글 리스트");
  		//System.out.println("댓글 리스트");
  		//System.out.println("bno:"+bno);
  		//System.out.println("댓글 리스트1");
  		List<CommentVO> comment = commentService.listReply(bno, session);
  		//System.out.println("댓글 리스트2");
  		//System.out.println(comment);
  		return comment;
  	}
    
    

    //댓글 등록
    @RequestMapping(value = "/insertVisitor", method = RequestMethod.POST)
    public @ResponseBody HashMap<String, Object> insertCommentVisitor(
    		CommentVO comment, HttpSession session) throws Exception {
       // System.out.println("댓글 등록 컨트롤러");
    	HashMap<String, Object> result = new HashMap<>();
        
        try {        	
            commentService.insertComment(comment);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
            result.put("message", e.getMessage());
        }
 
        return result;
 
    }
 
    //댓글 수정
    @RequestMapping(value = "/update")
    public @ResponseBody HashMap<String, Object> updateComment(@RequestParam int comment_no,
            @RequestParam String comment_content, @RequestParam String comment_price) throws Exception {
 
        HashMap<String, Object> result = new HashMap<>();
        
        try {
            CommentVO comment = new CommentVO();
            comment.setComment_no(comment_no);
            comment.setComment_content(comment_content);
            comment.setComment_price(comment_price);
 
            commentService.updateComment(comment);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
            result.put("message", e.getMessage());
        }
        return result;
    }
 
    //댓글 삭제
    @RequestMapping(value = "/delete/{comment_no}")
    private @ResponseBody HashMap<String, Object> deleteComment(@PathVariable int comment_no) throws Exception {
 
        HashMap<String, Object> result = new HashMap<>();
 //System.out.println(comment_no);
        try {
            commentService.deleteComment(comment_no);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
            result.put("message", e.getMessage());
        }
        return result;
    }
    
    //견적 채택 
	@RequestMapping(value = "/updateProgress/{updateProgress}", method = RequestMethod.GET) /*@RequestParam String updateProgress*/
    private @ResponseBody HashMap<String, Object> updateProgress(@PathVariable("updateProgress")int updateProgress, @RequestParam int bno2 ) throws Exception {
    	System.out.println("333 : "+updateProgress);
        HashMap<String, Object> result = new HashMap<>();
        System.out.println("ddd");
        int bno = updateProgress;
        System.out.println(bno2);
        try {
        	commentService.updateProgress(bno2);
        	commentService.updateProgress2(bno);
            result.put("status", true);
        } catch (Exception e) {
            result.put("status", false);
            result.put("message", e.getMessage());
        }
        return result;
    }



	private int number(String updateProgress) {
		// TODO 자동 생성된 메소드 스텁
		return 0;
	}
 
}


