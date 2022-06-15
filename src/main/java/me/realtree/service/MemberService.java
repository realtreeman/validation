package me.realtree.service;

import java.util.List;

import me.realtree.model.Member;

public interface MemberService {
	List<Member> getList();
	void register(Member member);
	void modify(Member member);
}
