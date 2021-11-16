package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dto.Post;
import service.PostService;
@Controller
@RequestMapping("/moo/*")
public class MooPostController {
	@Autowired
	private PostService service;
	
	@GetMapping("noticeView")
	public String noticeView(Model model) throws Exception{
		model.addAttribute("noticeList", service.selectNoticeList());
		return "minjeong/notice";
	}
	
	@GetMapping("qnaView")
	public String qnaView(Model model) throws Exception{
		model.addAttribute("qnaList", service.selectQnaList());
		return "minjeong/qna";
	}
	
	@GetMapping("reviewView")
	public String reviewView(Model model) throws Exception{
		model.addAttribute("reviewList", service.selectReviewList());
		return "minjeong/review";
	}
	
	@GetMapping("noticeWrite")
	public String noticeWrite() throws Exception{
		return "minjeong/notice_write";
	}
	
	@GetMapping("qnaWrite")
	public String qnaWrite() throws Exception{
		return "minjeong/qna_write";
	}
	
	@GetMapping("reviewWrite")
	public String reviewWrite() throws Exception{
		return "minjeong/review_write";
	}
	
	@GetMapping("noticeDetail")
	public String noticeDetail(Model model, @RequestParam int id) throws Exception{
		Post notice = service.selectNotice(id);
		notice.setHit(notice.getHit()+1);
		service.updateNotice(notice);
		model.addAttribute("post", notice);
		return "minjeong/notice_detail";
	}
	
	@GetMapping("qnaDetail")
	public String qnaDetail(Model model, @RequestParam int id) throws Exception{
		Post qna = service.selectQna(id);
		qna.setHit(qna.getHit()+1);
		service.updateQna(qna);
		model.addAttribute("post", qna);
		return "minjeong/qna_detail";
	}
	
	@GetMapping("reviewDetail")
	public String reviewDetail(Model model, @RequestParam int id) throws Exception{
		Post review = service.selectReivew(id);
		review.setHit(review.getHit()+1);
		service.updateReview(review);
		model.addAttribute("post", review);
		return "minjeong/review_detail";
	}
	
	@GetMapping("noticeUpdate")
	public String noticeUpdate(@RequestParam int id, Model model) throws Exception{
		model.addAttribute("post", service.selectNotice(id));
		return "minjeong/notice_update";
	}
	
	@GetMapping("qnaUpdate")
	public String qnaUpdate(@RequestParam int id, Model model) throws Exception{
		model.addAttribute("post", service.selectQna(id));
		return "minjeong/qna_update";
	}
	
	@GetMapping("reviewUpdate")
	public String reviewUpdate(@RequestParam int id, Model model) throws Exception{
		model.addAttribute("post", service.selectReivew(id));
		return "minjeong/review_update";
	}
	
	@PostMapping("noticeInsert")
	public String noticeInsert(@ModelAttribute Post post) throws Exception{
		service.insertNotice(post);
		return "redirect:/moo/noticeView";
	}
	
	@PostMapping("qnaInsert")
	public String qnaInsert(@ModelAttribute Post post) throws Exception{
		service.insertQna(post);
		return "redirect:/moo/qnaView";
	}
	
	@PostMapping("reviewInsert")
	public String reviewInsert(@ModelAttribute Post post) throws Exception{
		service.insertReview(post);
		return "redirect:/moo/reivewView";
	}
	
	@GetMapping("noticeDelete")
	public String noticeDelete(@RequestParam int id) throws Exception{
		service.deleteNotice(id);
		return "redirect:/moo/noticeView";
	}
	
	@GetMapping("qnaDelete")
	public String qnaDelete(@RequestParam int id) throws Exception{
		service.deleteQna(id);
		return "redirect:/moo/qnaView";
	}
	
	@GetMapping("reviewDelete")
	public String reviewDelete(@RequestParam int id) throws Exception{
		service.deleteReview(id);
		return "redirect:/moo/reviewView";
	}
	
	@PostMapping("noticeModify")
	public String noticeModify(@ModelAttribute Post post) throws Exception{
		service.updateNotice(post);
		return "redirect:/moo/noticeView";
	}
	
	@PostMapping("qnaModify")
	public String qnaModify(@ModelAttribute Post post) throws Exception{
		service.updateQna(post);
		return "redirect:/moo/qnaView";
	}
	
	@PostMapping("reviewModify")
	public String reviewModify(@ModelAttribute Post post) throws Exception{
		service.updateReview(post);
		return "redirect:/moo/reivewView";
	}
	
}
