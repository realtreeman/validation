package me.realtree.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.realtree.config.AppTest;


public class TotalCountTest extends AppTest{
	@Autowired
	BoardMapper mapper;
	
	@Test
	public void test() {
//		assertEquals(412, mapper.totalCount());
	}
}
