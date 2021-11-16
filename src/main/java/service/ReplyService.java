package service;

import java.util.List;

import dto.Reply;

public interface ReplyService {
	void addReply(Reply reply) throws Exception;
	void modifyReply(Reply reply) throws Exception;
	void removeReply(int id) throws Exception;
	Reply getReply(int id) throws Exception;
	List<Reply> selectPostReplyList(int postId) throws Exception;
	List<Reply> selectUserReplyList(String userId) throws Exception;
}
