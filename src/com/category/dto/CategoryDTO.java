package com.category.dto;

public class CategoryDTO {
	private int cIDX;
	private String cName;

	public CategoryDTO() {
		super();
	}

	public CategoryDTO(int cIDX, String cName) {
		super();
		this.cIDX = cIDX;
		this.cName = cName;
	}

	public int getcIDX() {
		return cIDX;
	}

	public void setcIDX(int cIDX) {
		this.cIDX = cIDX;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

}
