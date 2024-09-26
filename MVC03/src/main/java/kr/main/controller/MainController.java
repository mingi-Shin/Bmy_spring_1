package kr.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mingicom.entity.Member;
import kr.mingicom.mapper.MemberMapper;

@Controller
public class MainController {

	@Autowired
	private MemberMapper mMapper;
	
	@RequestMapping("/")
	public String  index() {
		
		return "index";
	}
	
	@RequestMapping("admin/showMemberList.do")
	public String showMemberList(Member vo, Model model) {
		
		List<Member> memList = mMapper.showMemberList();
		
		model.addAttribute("memberList", memList);
		return "admin/showMemberList";
		
	}
}
