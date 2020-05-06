package com.kh.ot.main.vo;

public class Product_color {

	private String pcRgb;
	private String pcName;
	
	public Product_color() {
	}

	public Product_color(String pcRgb, String pcName) {
		super();
		this.pcRgb = pcRgb;
		this.pcName = pcName;
	}

	public String getPcRgb() {
		return pcRgb;
	}

	public void setPcRgb(String pcRgb) {
		this.pcRgb = pcRgb;
	}

	public String getPcName() {
		return pcName;
	}

	public void setPcName(String pcName) {
		this.pcName = pcName;
	}

	@Override
	public String toString() {
		return "Product_color [pcRgb=" + pcRgb + ", pcName=" + pcName + "]";
	}
	
	
}
