package com.message.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.message.dto.ChatroomDTO;
import com.message.dto.MessageDTO;

public class MessageDAO {
	private static SqlSessionFactory factory;
	private static MessageDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	//채팅방 목록 가져오기
	public List<ChatroomDTO> getChatroomList(String userid) {
		SqlSession session = factory.openSession();
		System.out.println("Message dao getChatroom/userid:"+userid);
		List<ChatroomDTO> list = session.selectList("mybatis.MessageMapper.getChatroomList", userid);
		session.close();
		return list;
	}
	//메세지 리스트 가져오기 (해당 채팅방 아이디에 해당하는 리스트 가져오기)
	public List<MessageDTO> getMessageList(int chatidx) {
		SqlSession session = factory.openSession();
		System.out.println("Message dao getMessageList/userid:"+chatidx);
		List<MessageDTO> list = session.selectList("mybatis.MessageMapper.getMessageList", chatidx);
		session.close();
		return list;
	}
}
