package com.newoa.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionHelp {

	
	private static SqlSessionFactory factory=null;
	
	
	static{
		SqlSessionFactoryBuilder  sfb=new SqlSessionFactoryBuilder();
		Reader reader=null;
		try {
			reader = Resources.getResourceAsReader("mybatis/SqlMapConfig.xml");
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		factory=sfb.build(reader);
	}
	
	
	
	
	public static SqlSession getSession(){	
		
		SqlSession session=factory.openSession();
		
		return session;
		
	}
}
