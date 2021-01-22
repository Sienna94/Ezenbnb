package com.user.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.user.dto.UserDTO;

public class UserDAO {
	private static SqlSessionFactory factory;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	// 로그인 ------------------------------------------------------------------
	public UserDTO getLoginUser(String uid, String upw) {
		SqlSession session=factory.openSession();
		UserDTO dto=new UserDTO(uid, upw);
		UserDTO entity=session.selectOne("mybatis.UserMapper.getUser", dto);
		session.close();
		
		return entity;
	}
	// 회원가입 -----------------------------------------------------------------
	public int registration(UserDTO dto) {
		SqlSession session=factory.openSession();
		System.out.println("dao.registration에 들어옴");
		int n = 0;
		try {
			n = session.insert("mybatis.UserMapper.insertUser", dto);
			System.out.println("registration_n: "+ n);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		
		return n;
	}	
}
