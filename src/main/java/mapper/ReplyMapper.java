package mapper;

import java.util.List;

import dto.Reply;

public interface ReplyMapper {
	int insertReply(Reply reply);
	int updateReply(Reply reply);
	int deleteReply(int id);
	Reply selectReply(int id);
	List<Reply> selectPostReplyList(int postId);
	List<Reply> selectUserReplyList(String userId);
}
