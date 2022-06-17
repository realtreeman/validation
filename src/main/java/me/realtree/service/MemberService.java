package me.realtree.service;

import java.util.List;

import me.realtree.model.Member;

public interface MemberService {
	List<Member> getList();
	Member get(Long id);
	void register(Member member);
	void modify(Member member);
	void remove(Long id);
	
}
