package com.infinite.hotel;


	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;



	@Entity
	@Table(name="customerdetails")
	public class CustomerDetails {
	      
	    
	    @Id
	    @Column(name="UserId")
	    private int userId;
	    
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
	    
	    @Column(name="City")
	    private String city;
	    
	    public int getUserId() {
	        return userId;
	    }
	    public void setUserId(int userId) {
	        this.userId = userId;
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