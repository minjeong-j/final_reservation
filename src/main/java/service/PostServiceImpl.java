package service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.PostDAO;
import dto.Post;
import dto.Reply;
import util.PagingVO;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
	private PostDAO postDAO;

	@Override
	public int insertNotice(Post post) {
		return postDAO.insertNotice(post);
	}

	@Override
	public int insertQna(Post post) {
		return postDAO.insertQna(post);
	}

	@Override
	public int insertReview(Post post) {
		return postDAO.insertReview(post);
	}

	@Override
	public int insertReply(Reply reply) {
		return postDAO.insertReply(reply);
	}

	@Override
	public int updateNotice(Post post) {
		return postDAO.updateNotice(post);
	}

	@Override
	public int updateQna(Post post) {
		return postDAO.updateQna(post);
	}

	@Override
	public int updateReview(Post post) {
		return postDAO.updateReview(post);
	}

	@Override
	public int deleteNotice(int id) {
		return postDAO.deleteNotice(id);
	}

	@Override
	public int deleteQna(int id) {
		return postDAO.deleteQna(id);
	}

	@Override
	public int deleteReview(int id) {
		return postDAO.deleteReview(id);
	}

	@Override
	public int deleteReply(int id) {
		return postDAO.deleteReply(id);
	}

	@Override
	public Post selectNotice(int id) {
		return postDAO.selectNotice(id);
	}

	@Override
	public Post selectQna(int id) {
		return postDAO.selectQna(id);
	}

	@Override
	public Post selectReivew(int id) {
		return postDAO.selectReivew(id);
	}

	@Override
	public int selectNoticeCount() {
		return postDAO.selectNoticeCount();
	}

	@Override
	public int selectQnaCount() {
		return postDAO.selectQnaCount();
	}

	@Override
	public int selectReviewCount() {
		return postDAO.selectReviewCount();
	}

	@Override
	public List<Post> selectNoticeList() {
		return postDAO.selectNoticeList();
	}

	@Override
	public List<Post> selectQnaList() {
		return postDAO.selectQnaList();
	}

	@Override
	public List<Post> selectReviewList() {
		return postDAO.selectReviewList();
	}
	
}
