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

import me.realtree.model.Member;
import me.realtree.service.MemberService;
import me.realtree.validation.MemberValidator;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService service; 
	
	@GetMapping("/success")
	public String success(Model model) {
		model.addAttribute("list", service.getList());
		return "member/success";
	}
	
	@GetMapping("/register")
	public String registerForm(Member member) {
		return "member/register";
	}
	@PostMapping("/register")
	public String register(@Valid Member member, Errors errors) {
		new MemberValidator().validate(member, errors);
		if(errors.hasErrors()) {
			return "member/register";
		}
		return "redirect:success";
	}
}
