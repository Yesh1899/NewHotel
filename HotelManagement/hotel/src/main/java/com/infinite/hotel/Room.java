package com.infinite.hotel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomDetails")

public class Room {
    @Id
    @Column(name="RoomId")
    private String roomId;
    
    @Column(name="Type")
     private String  type;
    
    @Enumerated(EnumType.STRING)
    @Column(name="Status")
      private  Status status;
    
    @Column(name="CostPerDay")
      private  int costperday;
    
    @Column(name="HotelId")
    private String hotelId;
    
 
    

    public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getRoomId() {
        return roomId;
    }
    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }
    

    public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Status getStatus() {
        return status;
    }
    public void setStatus(Status status) {
        this.status = status;
    }
    public int getCostperday() {
        return costperday;
    }
    public void setCostperday(int costperday) {
        this.costperday = costperday;
    }
    
    }