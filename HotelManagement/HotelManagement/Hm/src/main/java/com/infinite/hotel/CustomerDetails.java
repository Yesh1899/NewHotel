package com.infinite.hotel;


	import javax.faces.bean.ManagedBean;
import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
    import javax.persistence.Table;
  @ManagedBean(name="customer")
	@Entity
	@Table(name="customerdetails")
	public class CustomerDetails {
	      
	    
	    @Id
	    @Column(name="username")
	    private String username;
	    

		

		@Column(name="Pass")
	    private String pass;
	    
	    @Column(name="CustomerId")
	    private String customerId;
	    
	    @Column(name="FirstName")
	    private String firstName;
	    
	    @Column(name="LastName")
	    private String lastName;
	    
	    @Column(name="ContactNo")
	    private String contactNo;
	    
	    @Column(name="IdProof")
	    private String idProof;
	    
	    @Column(name="Email")
	    private String email;
	    

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		@Column(name="City")
	    private String city;

	    public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getCustomerId() {
			return customerId;
		}

		public void setCustomerId(String customerId) {
			this.customerId = customerId;
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