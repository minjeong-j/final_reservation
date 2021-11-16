package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Reply;
import mapper.ReplyMapper;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertReply(Reply reply) {
		return sqlSession.getMapper(ReplyMapper.class).insertReply(reply);
	}

	@Override
	public int updateReply(Reply reply) {
		return sqlSession.getMapper(ReplyMapper.class).updateReply(reply);
	}

	@Override
	public int deleteReply(int id) {
		return sqlSession.getMapper(ReplyMapper.class).deleteReply(id);
	}

	@Override
	public Reply selectReply(int id) {
		return sqlSession.getMapper(ReplyMapper.class).selectReply(id);
	}

	@Override
	public List<Reply> selectPostReplyList(int postId) {
		return sqlSession.getMapper(ReplyMapper.class).selectPostReplyList(postId);
	}

	@Override
	public List<Reply> selectUserReplyList(String userId) {
		return sqlSession.getMapper(ReplyMapper.class).selectUserReplyList(userId);
	}
	
	
}
