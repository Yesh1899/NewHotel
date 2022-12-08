package com.infinite.hotel;


	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;



	@Entity
	@Table(name="Admindetails")
	public class AdminDetails {
	      
	    
	    @Id
	    @Column(name="AdminId")
	    private int adminId;
	    
	    @Column(name="Pass")
	    private String pass;
	    
	    @Column(name="AdminsId")
	    private String adminsId;
	    
	    @Column(name="FirstName")
	    private String firstName;
	    
	    @Column(name="LastName")
	    private String lastName;
	    
	    @Column(name="ContactNo")
	    private String contactNo;
	    
	    @Column(name="IdProof")
	    private String idProof;
	    
	    @Column(name="City")
	    private String city;

		public int getAdminId() {
			return adminId;
		}

		public void setAdminId(int adminId) {
			this.adminId = adminId;
		}

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getAdminsId() {
			return adminsId;
		}

		public void setAdminsId(String adminsId) {
			this.adminsId = adminsId;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getContactNo() {
			return contactNo;
		}

		public void setContactNo(String contactNo) {
			this.contactNo = contactNo;
		}

		public String getIdProof() {
			return idProof;
		}

		public void setIdProof(String idProof) {
			this.idProof = idProof;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}	
}