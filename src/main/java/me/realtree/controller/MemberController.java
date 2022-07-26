package me.realtree.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import me.realtree.model.Board;
import me.realtree.model.Member;
import me.realtree.service.MemberService;
import me.realtree.service.MemberServiceImpl;
import me.realtree.validation.MemberValidator;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@GetMapping("/success")
	public String success(Model model) {
		model.addAttribute("list", service.getList());
		return "member/success";
	}
	
	@GetMapping("/get")
	public String get(Long id,Model model) {
		model.addAttribute("member", service.get(id));
		return "member/get";
	}
	@GetMapping("/modify")
	public String modifyForm(Long id,Model model) {
		model.addAttribute("member",service.get(id));
		return "member/modify";
	}
	@PostMapping("/modify")
	public String modify(Member member, RedirectAttributes rttr) {
		service.modify(member);
		rttr.addFlashAttribute("message", member.getId());
		return "redirect:success";
	}
	@PostMapping("/remove")
	public String modify(Long id, RedirectAttributes rttr) {
		service.remove(id);
		rttr.addFlashAttribute("message", id);
		return "redirect:success";
	}
	
	
	@GetMapping("/register")
	public String registerForm(Member member) {
		return "member/register";
	}
	
	
	@PostMapping("/register")
	public String register(@Valid Member member, Errors errors) {
		service.register(member);
		new MemberValidator().validate(member, errors);
		if(errors.hasErrors()) {
			return "member/register";
		}
		return "redirect:success";
	}
	
	
	
}
