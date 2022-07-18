package me.realtree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import me.realtree.mapper.BoardMapper;
import me.realtree.mapper.ReplyMapper;
import me.realtree.model.Criteria;
import me.realtree.model.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	private final static int REPLY_ADD = 1;
	private final static int REPLY_DEL = -1;
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		return mapper.read(rno);
	}

	@Transactional
	@Override
	public int remove(Long rno) {
		return mapper.delete(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		return mapper.update(vo);
	}

	@Override
	public List<ReplyVO> getListWithPaging(Criteria criteria, Long bno) {
		return mapper.getListWithPaging(criteria, bno);
	}

}
