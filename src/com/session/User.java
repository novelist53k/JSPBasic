package com.session;

public class User {
	
	// 은닉된 클래스로 session_quiz/join01.jsp의 파라미터들로 멤버 변수 생성
	private String id;
	private String pw;
	private String name;
	private String birth;
	
	public User() {}

	public User(String id, String pw, String name, String birth) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	};
	
	
	
}
