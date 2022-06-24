package kr.co.ezenac.fileupload;


/*
  	idx			NUMBER PRIMARY KEY,
	name		varchar2(50) NOT NULL,
	title		varchar2(200) NOT NULL,
	cate		varchar2(30),
	ofile		varchar2(100) NOT NULL,
	sfile		varchar2(100) NOT NULL,
	postdate	DATE DEFAULT sysdate NOT NULL
 
 */
public class MyfileDTO {

	private String idx;
	private String name;
	private String title;
	private String cate;
	private String ofile;
	private String sfile;
	private String postdate;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	
	
	
}
