package com.decolab.persistence;

import java.util.List;
import javax.servlet.http.HttpSession;

import com.decolab.domain.CommentVO;

public interface CommentDAO {

	// 댓글 갯수
    public int countComment() throws Exception;
    // 댓글리스트
	public List<CommentVO> list(int bno) throws Exception;
    // 댓글삽입
    public void insertComment(CommentVO commentVO) throws Exception;
    // 댓글수정
    public void updateComment(CommentVO commentVO) throws Exception;
    // 댓글삭제
    public void deleteComment(int comment_no) throws Exception;
    //견적채택
    public void updateProgress(int bno2) throws Exception;
    public void updateProgress2(int bno) throws Exception;


}
