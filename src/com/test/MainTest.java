package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.service.UserinfoService;
import com.vo.Userinfo;

 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext-dao.xml","classpath:spring/applicationContext-service.xml","classpath:spring/applicationContext-transaction.xml","classpath:mybatis/sqlMapConfig.xml"})
public class MainTest {
	@Autowired
	private UserinfoService userinfoService;

	@Test
	public void test() throws Exception {
	//	Integer count=courseService.findCount();
		Userinfo ui=new Userinfo(); 
		ui.setName("admin");
		ui.setPassword("12341");
		List<Userinfo> list=userinfoService.findUserinfoByParam(ui);
		System.out.println(list.size());
	}
   
	 
}
