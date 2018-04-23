package com.baizhi.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	private static SqlSessionFactory sqlSessionFactory;
	private static ThreadLocal<SqlSession> tl = new ThreadLocal<SqlSession>();

	static{
		try {
			InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static SqlSession openSession(){
		return sqlSessionFactory.openSession();
	}
	
	//在实战使用本方法
	public static SqlSession getCurrentSession(){
		SqlSession sqlSession = tl.get();
		if(sqlSession==null){
			sqlSession = openSession();
			tl.set(sqlSession);
		}
		return sqlSession;
	}
	
	
	public static Object getDAO(Class clazz){
		return getCurrentSession().getMapper(clazz);
	}
	
	public static void commit(){
		SqlSession sqlSession = getCurrentSession();
		sqlSession.commit();
		close();
	}
	
	public static void rollback(){
		SqlSession sqlSession = getCurrentSession();
		sqlSession.rollback();
		close();
	}
	
	public static void close(){
		SqlSession sqlSession = getCurrentSession();
		sqlSession.close();
		tl.remove();
	}
	
	

}
