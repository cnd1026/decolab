package com.decolab.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.decolab.domain.CommentVO;
import com.decolab.persistence.CommentDAO;



@Service("CommentService")
public class CommentServiceImpl implements CommentService{
 
	@Inject
	private CommentDAO dao;
    
    @Override
	public List<CommentVO> listReply(int bno, HttpSession session) throws Exception {
    	List<CommentVO> items = dao.list(bno);
		return items;
	}

	@Override
    public void insertComment(CommentVO commentVO) throws Exception {
        dao.insertComment(commentVO);
    }
 
    @Override
    public void updateComment(CommentVO commentVO) throws Exception {
 
        dao.updateComment(commentVO);
    }
 
    @Override
    public void deleteComment(int comment_no) throws Exception {
        
        dao.deleteComment(comment_no);
    }
    
    @Override
    public void updateProgress(int bno2) throws Exception {
        
        dao.updateProgress(bno2);
    }
    
    @Override
    public int updateProgress2(int bno) throws Exception {
        return dao.updateProgress2(bno);
    }


}
