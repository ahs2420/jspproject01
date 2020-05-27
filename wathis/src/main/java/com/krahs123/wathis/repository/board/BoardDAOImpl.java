package com.krahs123.wathis.repository.board;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.BoardVO;
@Repository
public class BoardDAOImpl implements BoardDAO{
	final String namespace ="mappers.BoardMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<BoardVO> getBoardList(String searchOpt,String words,int pageIndex,int pagePer) {
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("pageIndex", pageIndex);
		map.put("pagePer", pagePer);
		return sql.selectList(namespace+".getBoardList",map);
	}

	//게시판 갯수
	@Override
	public int getBoardCount(String searchOpt,String words) {
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(namespace+".getBoardCount",map);
	}
	
	//게시판 등록
	@Override
	public int setBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setBoard",bvo);
	}

	//게시판 테이블 동적 생성
	@Override
	public int createTblArticle(String boardCode) {
		// TODO Auto-generated method stub
		String sql="CREATE TABLE tb_article_"+boardCode+"("
				+"id int UNSIGNED NOT NULL auto_increment,"
				+"subject varchar(300) NOT NULL COMMENT '제목',"
				+"member_id int UNSIGNED NOT NULL COMMENT '작성자 일련번호',"
				+"content text COMMENT '내용',"
				+"hit int default 0 COMMENT '조회수',"
				+"fileName varchar(300) COMMENT '첨부파일이름', "
				+"fileOriName varchar(300) COMMENT '첨부파일원래이름', "
				+"fileUrl varchar(300) COMMENT '첨부파일저장 위치', "
				+"ref int COMMENT '답변형 게시판에서 정렬 할때 사용(id)',"
				+"re_step int COMMENT '답변형 게시판에서 사용하는 그룹(답글의 그룹)',"
				+"re_level int COMMENT '답변형 게시판에서 들여쓰기',"
				+"reg_date datetime default CURRENT_TIMESTAMP  COMMENT '작성일',"
				+"PRIMARY KEY(id)"
				+")";
		return this.sql.update(namespace+".createTblArticle",sql);
		//repository에서는 CREATE를 update로 사용
	}
	
	//게시판 댓긓 테이블 동적 생성
	@Override
	public int createTblComment(String boardCode) {
		// TODO Auto-generated method stub
		String sql="CREATE TABLE tb_comment_"+boardCode+"("
				+"id int UNSIGNED NOT NULL auto_increment,"
				+"aid int UNSIGNED NOT NULL COMMENT '게시판 아이디',"
				+"comment text,"
				+"member_id int UNSIGNED NOT NULL COMMENT '작성자 일련번호',"
				+"reg_date datetime default CURRENT_TIMESTAMP,"
				+"PRIMARY KEY(id)"
				+")";
		return this.sql.update(namespace+".createTblComment",sql);
		//repository에서는 update로 사용
	}
	
	//게시판 상세
	@Override
	public BoardVO getBoardDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getBoardDetail",id);
	}
	//게시판 수정
	@Override
	public int updateBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateBoard",bvo);
	}
	//게시판 삭제
	@Override
	public int deleteBoard(String boardCode) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteBoard",boardCode);
	}

	@Override
	public int deleteTblArticle(String boardCode) {
		// TODO Auto-generated method stub
		String sql="DROP TABLE IF EXISTS `tb_article_"+boardCode+"`";
		return this.sql.delete(namespace+".deleteTblArticle",sql);
	}

	@Override
	public int deleteTblComment(String boardCode) {
		// TODO Auto-generated method stub
		String sql="DROP TABLE IF EXISTS `tb_comment_"+boardCode+"`";
		return this.sql.delete(namespace+".deleteTblComment",sql);
	}

	@Override
	public int getBoardCode(String boardCode) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getBoardCode",boardCode);
	}
	
}
