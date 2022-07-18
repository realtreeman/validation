package me.realtree.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ReplyServiceImplTest {

	@Autowired
	ReplyService service;
	
	@Test
	public void test() {
		service.get(1L);
	}

}
