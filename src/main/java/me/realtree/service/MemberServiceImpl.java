package me.realtree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.realtree.mapper.MemberMapper;
import me.realtree.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public List<Member> getList() {
		return memberMapper.getList();
	}

	@Override
	public void register(Member member) {
		memberMapper.insert(member);
	}

	@Override
	public void modify(Member member) {
		memberMapper.update(member);
	}

	@Override
	public void remove(Long id) {
		memberMapper.delete(id);
	}

	@Override
	public Member get(Long id) {
		return memberMapper.get(id);
	}
	
	
}
