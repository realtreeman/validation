package me.realtree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import me.realtree.model.Board;
import me.realtree.model.Criteria;
import me.realtree.model.PageMaker;
import me.realtree.service.BoardServiceImpl;
import me.realtree.validation.BoardValidator;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardServiceImpl service;
	
	@GetMapping("/list")
	public String list(Criteria criteria, Model model) {
		PageMaker maker = new PageMaker(criteria, service.totalCount(criteria));
		List<Board> list = service.getList(criteria);
		
		model.addAttribute("pageMaker", maker);
		model.addAttribute("list", list);
		return "board/list";
	}
	
	@GetMapping("/register")
	public String registerForm(@ModelAttribute("boardVo") Board board) {
		return "board/register";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute("boardVo") Board board, Errors errors) {
		new BoardValidator().validate(board, errors);
		if(errors.hasErrors()) {
			return "board/register";
		}
		System.out.println("제목:"+board.getTitle());
		System.out.println("내용:"+board.getContent());
		System.out.println("작성자:"+board.getWriter());
		return "redirect:list";
	}
}
