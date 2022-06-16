package me.realtree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.realtree.mapper.MemberMapper;
import me.realtree.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;
	
	@Override
	public List<Member> getList() {
		return mapper.getList();
	}

	@Override
	public void register(Member member) {
		mapper.insert(member);
	}

	@Override
	public void modify(Member member) {
	}

}
