package com.kh.ot.board.vo;

import java.sql.Date;

import com.kh.ot.common.Pagination;

public class SearchCondition extends Pagination {
	private int memno;
	private String title;
	private String content;
	private String writer;
	private int searchDate;
	private int b_cate_no;
	private String search_key;
	private String search;
	private String search_date;
	
	public SearchCondition() {}

	public SearchCondition(int memno, String title, String content, String writer, int searchDate, int b_cate_no,
			String search_key, String search, String search_date) {
		super();
		this.memno = memno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.searchDate = searchDate;
		this.b_cate_no = b_cate_no;
		this.search_key = search_key;
		this.search = search;
		this.search_date = search_date;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getSearchDate() {
		return searchDate;
	}

	public void setSearchDate(int searchDate) {
		this.searchDate = searchDate;
	}

	public int getB_cate_no() {
		return b_cate_no;
	}

	public void setB_cate_no(int b_cate_no) {
		this.b_cate_no = b_cate_no;
	}

	public String getSearch_key() {
		return search_key;
	}

	public void setSearch_key(String search_key) {
		this.search_key = search_key;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getSearch_date() {
		return search_date;
	}

	public void setSearch_date(String search_date) {
		this.search_date = search_date;
	}

	@Override
	public String toString() {
		return "SearchCondition [memno=" + memno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", searchDate=" + searchDate + ", b_cate_no=" + b_cate_no + ", search_key=" + search_key + ", search="
				+ search + ", search_date=" + search_date + "]";
	}
	

	

	

}
