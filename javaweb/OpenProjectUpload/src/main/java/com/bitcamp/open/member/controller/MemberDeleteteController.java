package com.bitcamp.open.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.open.member.model.Member;
import com.bitcamp.open.member.service.MemberDeleteService;

@Controller
@RequestMapping("/member/memberDelete")
public class MemberDeleteteController {

	// 같은 type을 찾아서 주입
	@Autowired
	private MemberDeleteService memberDeleteService;

		@RequestMapping(method=RequestMethod.GET)
		public String memberDelete(@RequestParam(value="member_id") String id) {
			
			memberDeleteService.memberDelete(id);
			
			return "redirect:/member/memberList";
		}
		
}
