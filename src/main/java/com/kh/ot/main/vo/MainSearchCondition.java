/**
 * 
 */
package com.kh.ot.main.vo;

/**
 * @author user1
 *
 */
public class MainSearchCondition {

	private int product1;
	private int product2;
	private int sort;
	/**
	 * 
	 */
	public MainSearchCondition() {
		super();
	}
	
	public MainSearchCondition(int product1, int product2, int sort) {
		super();
		this.product1 = product1;
		this.product2 = product2;
		this.sort = sort;
	}
	public int getProduct1() {
		return product1;
	}
	public void setProduct1(int product1) {
		this.product1 = product1;
	}
	public int getProduct2() {
		return product2;
	}
	public void setProduct2(int product2) {
		this.product2 = product2;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	@Override
	public String toString() {
		return "MainSearchCondition [product1=" + product1 + ", product2=" + product2 + ", sort=" + sort + "]";
	}
	
	
}
