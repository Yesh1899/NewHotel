package com.infinite.hotel;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity



@Table(name="HotelDetails")
public class HotelDetails {
	
    @Id
    @Column(name="hotelId")
    private String hotelId;
    
    @Column(name="hotelName")
    private String hotelName;
    
    @Column(name="address1")
    private String address1;
    
    @Column(name="address2")
    private String address2;
    
    @Column(name="city")
    private String city;
    
    @Column(name="zipcode")
    private String zipcode;
    
    


   public String getZipcode() {
		return zipcode;
	}



	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}



@Column(name="contactNo")
    private String contactNo;
    
    @Column(name="rating")
    private  double rating;
    
    @Column(name="review")
    private String review;
    
    @Column(name="aboutus")
    private String aboutus;



   public String getHotelId() {
        return hotelId;
    }



   public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }



   public String getHotelName() {
        return hotelName;
    }



   public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }



   public String getAddress1() {
        return address1;
    }



   public void setAddress1(String address1) {
        this.address1 = address1;
    }



   public String getAddress2() {
        return address2;
    }



   public void setAddress2(String address2) {
        this.address2 = address2;
    }



   public String getCity() {
        return city;
    }



   public void setCity(String city) {
        this.city = city;
    }




    public String getContactNo() {
        return contactNo;
    }



   public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }



   public double getRating() {
        return rating;
    }



   public void setRating(double rating) {
        this.rating = rating;
    }



   public String getReview() {
        return review;
    }



   public void setReview(String review) {
        this.review = review;
    }



   public String getAboutus() {
        return aboutus;
    }



   public void setAboutus(String aboutus) {
        this.aboutus = aboutus;
    }




    




}