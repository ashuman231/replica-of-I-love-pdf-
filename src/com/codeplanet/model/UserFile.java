package com.codeplanet.model;

import org.springframework.web.multipart.MultipartFile;

public class UserFile {

	String name;
	MultipartFile[] userfile;
	String a;
	String b;
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public MultipartFile[] getUserfile() {
		return userfile;
	}
	public void setUserfile(MultipartFile[] userfile) {
		this.userfile = userfile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
