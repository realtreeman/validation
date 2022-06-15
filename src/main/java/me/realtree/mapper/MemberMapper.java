package me.realtree.mapper;

import java.util.List;

import me.realtree.model.Member;


public interface MemberMapper {
	List<Member> getList();
	void insert(Member member);
	void update(Member member);
}
