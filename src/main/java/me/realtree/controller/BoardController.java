package me.realtree.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import me.realtree.model.Board;
import me.realtree.model.Criteria;
import me.realtree.model.PageMaker;
import me.realtree.service.BoardService;
import me.realtree.service.BoardServiceImpl;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardServiceImpl service;
	
	@GetMapping("/list/{category}")
	public String boardList(Model model, Criteria criteria, @PathVariable String category) {
		criteria.setCategory(category);
		PageMaker pageMaker = new PageMaker(criteria, service.totalCount(criteria));
		model.addAttribute("list",service.getList(criteria));
		model.addAttribute("pageMaker",pageMaker);
		return "board/list";
	}
	@GetMapping("/{category}/get")
	public String get(Long bno,Model model, @PathVariable String category) {
		model.addAttribute("board",service.get(bno));
		return "board/get";
	}
	
	@GetMapping("/{category}/modify")
	public String modifyForm(Long bno,Model model, @PathVariable String category) {
		model.addAttribute("board",service.get(bno));
		return "board/modify";
	}
	
	@PostMapping("/{category}/modify")
	public String modify(Board board, RedirectAttributes rttr, @PathVariable String category) {
		service.modify(board);
		rttr.addFlashAttribute("message", board.getBno());
		return "redirect:list";
	}
	@PostMapping("/remove")
	public String modify(Long bno, RedirectAttributes rttr) {
		service.remove(bno);
		rttr.addFlashAttribute("message", bno);
		return "redirect:list";
	}
	
	@GetMapping("/register")
	public String registerForm(Board board) {
		return "board/register";
	}
	@PostMapping("/register")
	public String register(Board board, RedirectAttributes rttr) {
		service.register(board);
		System.out.println("--------------------------------");
		System.out.println(board.getBno());
		rttr.addFlashAttribute("message", board.getBno());
		return "redirect:list";
	}
}
