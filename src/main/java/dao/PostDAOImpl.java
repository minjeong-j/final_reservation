package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Post;
import dto.Reply;
import mapper.PostMapper;
import mapper.ReplyMapper;
import util.PagingVO;

@Repository
public class PostDAOImpl implements PostDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertNotice(Post post) {
		return sqlSession.getMapper(PostMapper.class).insertNotice(post);
	}

	@Override
	public int insertQna(Post post) {
		return sqlSession.getMapper(PostMapper.class).insertQna(post);
	}

	@Override
	public int insertReview(Post post) {
		return sqlSession.getMapper(PostMapper.class).insertReview(post);
	}

	@Override
	public int insertReply(Reply reply) {
		return sqlSession.getMapper(PostMapper.class).insertReply(reply);
	}

	@Override
	public int updateNotice(Post post) {
		return sqlSession.getMapper(PostMapper.class).updateNotice(post);
	}

	@Override
	public int updateQna(Post post) {
		return sqlSession.getMapper(PostMapper.class).updateQna(post);
	}

	@Override
	public int updateReview(Post post) {
		return sqlSession.getMapper(PostMapper.class).updateReview(post);
	}

	@Override
	public int deleteNotice(int id) {
		return sqlSession.getMapper(PostMapper.class).deleteNotice(id);
	}

	@Override
	public int deleteQna(int id) {
		return sqlSession.getMapper(PostMapper.class).deleteQna(id);
	}

	@Override
	public int deleteReview(int id) {
		return sqlSession.getMapper(PostMapper.class).deleteReview(id);
	}

	@Override
	public int deleteReply(int id) {
		return sqlSession.getMapper(PostMapper.class).deleteReply(id);
	}

	@Override
	public Post selectNotice(int id) {
		return sqlSession.getMapper(PostMapper.class).selectNotice(id);
	}

	@Override
	public Post selectQna(int id) {
		return sqlSession.getMapper(PostMapper.class).selectQna(id);
	}

	@Override
	public Post selectReivew(int id) {
		return sqlSession.getMapper(PostMapper.class).selectReivew(id);
	}

	@Override
	public int selectNoticeCount() {
		return sqlSession.getMapper(PostMapper.class).selectNoticeCount();
	}

	@Override
	public int selectQnaCount() {
		return sqlSession.getMapper(PostMapper.class).selectQnaCount();
	}

	@Override
	public int selectReviewCount() {
		return sqlSession.getMapper(PostMapper.class).selectReviewCount();
	}

	@Override
	public List<Post> selectNoticeList() {
		return sqlSession.getMapper(PostMapper.class).selectNoticeList();
	}

	@Override
	public List<Post> selectQnaList() {
		return sqlSession.getMapper(PostMapper.class).selectQnaList();
	}

	@Override
	public List<Post> selectReviewList() {
		return sqlSession.getMapper(PostMapper.class).selectReviewList();
	}
}
