package com.decolab.persistence;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decolab.domain.CommentVO;

@Repository // CommentDAO 를 스프링 구조에 인식 시키겠다라고 선언
public class CommentDAOImpl implements CommentDAO{

	@Autowired
	private SqlSession session;

	//private Object vo;
	
	private static String namespace="com.decolab.mapper.GoodsMapper";
	
	@Override
	public int countComment() throws Exception {
		return session.selectOne(namespace+".countComment");		
	}

	//댓글 리스트
	@Override
	public List<CommentVO> list(int bno) throws Exception {
		return session.selectList(namespace+".list", bno);
	}

	@Override
	public void insertComment(CommentVO vo) throws Exception {
		//System.out.println(vo + "dao");
		//System.out.println("호출");
		session.insert(namespace+".insertComment",vo);
		
	}

	@Override
	public void updateComment(CommentVO vo) throws Exception {
		session.update(namespace+".updateComment",vo);
	}

	@Override
	public void deleteComment(int comment_no) throws Exception {
		session.delete(namespace+".deleteComment",comment_no);		
	}
	
	@Override
	public void updateProgress(int goods_no) throws Exception {
		session.update(namespace+".updateProgress",goods_no);		
	}

}
