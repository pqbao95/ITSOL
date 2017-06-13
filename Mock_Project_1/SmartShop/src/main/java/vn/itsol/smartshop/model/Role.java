package vn.itsol.smartshop.model;

import javax.persistence.*;

@Entity
@Table(name = "role")
public class Role {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="ROLE_SEQ")
	@SequenceGenerator(name="ROLE_SEQ", sequenceName="ROLE_SEQ", allocationSize=1)
	@Column(name = "roleid")
	private int roleid;
	
	@Column(name = "rolename")
	private String rolename;

	public Role() {
		super();
	}

	public Role(int roleid, String rolename) {
		super();
		this.roleid = roleid;
		this.rolename = rolename;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
}
