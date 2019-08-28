package com.decolab.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.decolab.domain.CommentVO;

public interface CommentService {

	public List<CommentVO> listReply(int bno, HttpSession session) throws Exception;
	    
    public void insertComment(CommentVO commentVO) throws Exception;
    
    public void updateComment(CommentVO commentVO) throws Exception;
    
    public void deleteComment(int comment_no) throws Exception;
    
    public void updateProgress(int goods_no) throws Exception;

}
