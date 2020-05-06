/**
 * 
 */
package com.kh.ot.main.vo;

/**
 * @author user1
 *
 */
public class MaindownCategory {
	
	private int downNo;
	private int upNo;
	private String downName;
	private String downUsing;
	/**
	 * 
	 */
	public MaindownCategory() {
	}
	/**
	 * @param downNo
	 * @param upNo
	 * @param downName
	 * @param downUsing
	 */
	public MaindownCategory(int downNo, int upNo, String downName, String downUsing) {
		super();
		this.downNo = downNo;
		this.upNo = upNo;
		this.downName = downName;
		this.downUsing = downUsing;
	}
	/**
	 * @return the downNo
	 */
	public int getDownNo() {
		return downNo;
	}
	/**
	 * @param downNo the downNo to set
	 */
	public void setDownNo(int downNo) {
		this.downNo = downNo;
	}
	/**
	 * @return the upNo
	 */
	public int getUpNo() {
		return upNo;
	}
	/**
	 * @param upNo the upNo to set
	 */
	public void setUpNo(int upNo) {
		this.upNo = upNo;
	}
	/**
	 * @return the downName
	 */
	public String getDownName() {
		return downName;
	}
	/**
	 * @param downName the downName to set
	 */
	public void setDownName(String downName) {
		this.downName = downName;
	}
	/**
	 * @return the downUsing
	 */
	public String getDownUsing() {
		return downUsing;
	}
	/**
	 * @param downUsing the downUsing to set
	 */
	public void setDownUsing(String downUsing) {
		this.downUsing = downUsing;
	}
	@Override
	public String toString() {
		return "downCategory [downNo=" + downNo + ", upNo=" + upNo + ", downName=" + downName + ", downUsing="
				+ downUsing + "]";
	}

	
}
