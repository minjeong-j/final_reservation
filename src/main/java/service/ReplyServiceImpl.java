package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import dao.ReplyDAO;
import dto.Reply;


@Repository
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyDAO replyDAO;
	
	@Transactional
	@Override
	public void addReply(Reply reply) throws Exception {
		replyDAO.insertReply(reply);
	}
	
	@Transactional
	@Override
	public void modifyReply(Reply reply) throws Exception {
		replyDAO.updateReply(reply);
	}
	
	@Transactional
	@Override
	public void removeReply(int id) throws Exception {
		replyDAO.deleteReply(id);
	}

	@Override
	public Reply getReply(int id) throws Exception {
		return replyDAO.selectReply(id);
	}

	@Override
	public List<Reply> selectPostReplyList(int postId) throws Exception {
		return replyDAO.selectPostReplyList(postId);
	}

	@Override
	public List<Reply> selectUserReplyList(String userId) throws Exception {
		return replyDAO.selectUserReplyList(userId);
	}
}
