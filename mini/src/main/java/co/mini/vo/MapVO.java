package co.mini.vo;

public class MapVO {
	
	private String branch_name;
	private String address;
	
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "MapVO [branch_name=" + branch_name + ", address=" + address + "]";
	}
	
	
	

}
