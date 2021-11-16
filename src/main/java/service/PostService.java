package service;

import java.util.List;
import java.util.Map;

import dto.Post;
import dto.Reply;
import util.PagingVO;

public interface PostService {
	int insertNotice(Post post);
	int insertQna(Post post);
	int insertReview(Post post);
	int insertReply(Reply reply);
	
	int updateNotice(Post post);
	int updateQna(Post post);
	int updateReview(Post post);
	
	int deleteNotice(int id);
	int deleteQna(int id);
	int deleteReview(int id);
	int deleteReply(int id);
	
	Post selectNotice(int id);
	Post selectQna(int id);
	Post selectReivew(int id);
	
	int selectNoticeCount();
	int selectQnaCount();
	int selectReviewCount();
	
	List<Post> selectNoticeList();
	List<Post> selectQnaList();
	List<Post> selectReviewList();
}
