package org.dimigo.vo;

public class UserVo {
	private String id;
	private String name;
	private String nick;
	private String pw;
	public String getPw() {
		return pw;
	}
	
	public UserVo(String id, String name, String nick) {
		super();
		this.id = id;
		this.name = name;
		this.nick = nick;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
}
