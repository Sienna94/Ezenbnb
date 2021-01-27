package com.host.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;
import com.user.dto.UserDTO;

public class HostingDAO {
	private static SqlSessionFactory factory;
	private static HostingDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	//등록한 방 목록 가져오기
	public List<HouseDTO> getHostingList(int midx) {
		SqlSession session = factory.openSession();
		List<HouseDTO> list = session.selectList("mybatis.HouseMapper.getHostingList", midx);
		session.close();
		return list;
	}
	//등록한 방 삭제하기
	public void delHosting(int hidx) {
		SqlSession session = factory.openSession();
		int n=0;
		try{
			n=session.delete("mybatis.HouseMapper.delHosting",hidx);
			if(n > 0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
	}
}
