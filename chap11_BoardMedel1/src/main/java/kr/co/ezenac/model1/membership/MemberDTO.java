package kr.co.ezenac.model1.membership;
/*
 * 	ID			VARCHAR2(10) NOT NULL,
	PASS		VARCHAR2(10) NOT NULL,
	NAME		VARCHAR2(30) NOT NULL,
	REGIDATE		DATE	DEFAULT SYSDATE NOT NULL,
 */
public class MemberDTO {
	private String id;
	private String pass;
	private String name;
	private String regidate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	
	
}
