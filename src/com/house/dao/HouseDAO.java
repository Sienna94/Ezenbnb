package com.house.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

public class HouseDAO {
	private static SqlSessionFactory factory;
	private static HouseDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	//방가져오기
	public HouseDTO getHouseOne(String hidx){
		SqlSession session = factory.openSession();
		HouseDTO dto = session.selectOne("mybatis.HouseMapper.getHouseOne", hidx);
		session.close();
		return dto;	
	}

	//카테고리별 방 목록 가져오기
	public List<HouseDTO> getHouseList(String catg) {
		SqlSession session = factory.openSession();
		List<HouseDTO> list = session.selectList("mybatis.HouseMapper.getHouseList", catg);
		session.close();
		return list;
	}
}
