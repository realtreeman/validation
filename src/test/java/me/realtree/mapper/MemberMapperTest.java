package me.realtree.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.realtree.config.AppTest;
import me.realtree.model.Member;

public class MemberMapperTest extends AppTest {

	@Autowired  
	MemberMapper mapper; 
	
	@Test
	public void getListTest() {
		List<Member> list = mapper.getList();
		assertEquals(4, list.size());
	}

}
