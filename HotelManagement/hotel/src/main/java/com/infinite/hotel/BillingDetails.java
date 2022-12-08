package com.infinite.hotel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="BillingDetails")
public class BillingDetails {
    
	@Id
	@Column(name="BookId")
	private String bookId;
	
	 @Column(name="CustomerId")
	 private String customerId;
	
	@Column(name="RoomId")
	private String roomId;
	
	@Column(name="NoOfDays")
	private int noOfDays;
	
	@Column(name="BillAmt")
	private int billAmt;

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

	public int getNoOfDays() {
		return noOfDays;
	}

	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}

	public int getBillAmt() {
		return billAmt;
	}

	public void setBillAmt(int billAmt) {
		this.billAmt = billAmt;
	}
	
	
}