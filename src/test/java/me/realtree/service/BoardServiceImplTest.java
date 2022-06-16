package me.realtree.service;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.realtree.config.AppTest;
import me.realtree.mapper.BoardMapper;
import me.realtree.model.Board;
import me.realtree.model.Criteria;

public class BoardServiceImplTest extends AppTest{

	@Autowired
	BoardMapper mapper;
	
	Criteria criteria = new Criteria();
	
	@Test
	public void getListTest() {
		List<Board> list = mapper.getList(criteria);
		assertEquals(4, list.size());
	}

}
