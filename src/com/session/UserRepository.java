package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	
	// DB라고 가정
	private static List<User> userList = new ArrayList<>();

	// 회원가입
	public static void registerUser(User user) {
		userList.add(user);
	}
	
	// 회원목록
	public static List<User> showAllUser(){
		return userList;
	}
	
	// 회원정보
	public static User getUser(String id) {
		User user = null;
		for(User u : userList) {
			if(u.getId().equals(id)) user = u;
		}
		
		return user;
	}
	
	// 회원탈퇴
	public static void deleteUser(User user) {
		userList.remove(user);
	}
	
	
}
