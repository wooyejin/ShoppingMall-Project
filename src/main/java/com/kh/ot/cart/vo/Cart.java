package com.kh.ot.cart.vo;

public class Cart {
	private int ca_no; //카트번호
	private int memNo; // 회원번호
	private int prdt_no; // 상품번호
	private int prdt_price; // 상품가격
	private int prdt_count; // 상품갯수
	private int prdt_sumprice; // 상품총금액
	private String prdt_color; // 상품컬러
	private String prdt_size; // 상품사이즈
	private String path; // 이미지 경로
	private String image; // 이미지
	private String prdt_name; // 상품이름
	
	public Cart() {}

	
	public Cart(int ca_no, int memNo, int prdt_no, int prdt_price, int prdt_count, int prdt_sumprice, String prdt_color,
			String prdt_size, String path, String image, String prdt_name) {
		super();
		this.ca_no = ca_no;
		this.memNo = memNo;
		this.prdt_no = prdt_no;
		this.prdt_price = prdt_price;
		this.prdt_count = prdt_count;
		this.prdt_sumprice = prdt_sumprice;
		this.prdt_color = prdt_color;
		this.prdt_size = prdt_size;
		this.path = path;
		this.image = image;
		this.prdt_name = prdt_name;
	}


	public int getCa_no() {
		return ca_no;
	}

	public void setCa_no(int ca_no) {
		this.ca_no = ca_no;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getPrdt_no() {
		return prdt_no;
	}

	public void setPrdt_no(int prdt_no) {
		this.prdt_no = prdt_no;
	}

	public int getPrdt_price() {
		return prdt_price;
	}

	public void setPrdt_price(int prdt_price) {
		this.prdt_price = prdt_price;
	}

	public int getPrdt_count() {
		return prdt_count;
	}

	public void setPrdt_count(int prdt_count) {
		this.prdt_count = prdt_count;
	}

	public int getPrdt_sumprice() {
		return prdt_sumprice;
	}

	public void setPrdt_sumprice(int prdt_sumprice) {
		this.prdt_sumprice = prdt_sumprice;
	}

	public String getPrdt_color() {
		return prdt_color;
	}

	public void setPrdt_color(String prdt_color) {
		this.prdt_color = prdt_color;
	}

	public String getPrdt_size() {
		return prdt_size;
	}

	public void setPrdt_size(String prdt_size) {
		this.prdt_size = prdt_size;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrdt_name() {
		return prdt_name;
	}

	public void setPrdt_name(String prdt_name) {
		this.prdt_name = prdt_name;
	}


	@Override
	public String toString() {
		return "Cart [ca_no=" + ca_no + ", memNo=" + memNo + ", prdt_no=" + prdt_no + ", prdt_price=" + prdt_price
				+ ", prdt_count=" + prdt_count + ", prdt_sumprice=" + prdt_sumprice + ", prdt_color=" + prdt_color
				+ ", prdt_size=" + prdt_size + ", path=" + path + ", image=" + image + ", prdt_name=" + prdt_name + "]";
	}

	
	
}
