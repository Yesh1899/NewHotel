package com.infinite.hotel;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="RoomBooking")
public class RoomBooking {
	
	@Id
	@Column(name="bookId")
  private String bookId;
	
	@Column(name="roomId")
  private String roomId;
	
	@Column(name="customerId")
  private String customerId;
	
	@Column(name="bookDate")
  private  Date bookDate;
	
	@Column(name="chkinDate")
  private Date chkinDate;
	
	@Column(name="chkoutDate")
  private Date chkoutDate;
	
	@Column(name="HotelId")
	private String hotelId;
	
public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
public String getBookId() {
	return bookId;
}
public void setBookId(String bookId) {
	this.bookId = bookId;
}
public String getRoomId() {
	return roomId;
}
public void setRoomId(String roomId) {
	this.roomId = roomId;
}
public String getCustomerId() {
	return customerId;
}
public void setCustomerId(String customerId) {
	this.customerId = customerId;
}
public Date getBookDate() {
	return bookDate;
}
public void setBookDate(Date bookDate) {
	this.bookDate = bookDate;
}
public Date getChkinDate() {
	return chkinDate;
}
public void setChkinDate(Date chkinDate) {
	this.chkinDate = chkinDate;
}
public Date getChkoutDate() {
	return chkoutDate;
}
public void setChkoutDate(Date chkoutDate) {
	this.chkoutDate = chkoutDate;
}
  
  
}