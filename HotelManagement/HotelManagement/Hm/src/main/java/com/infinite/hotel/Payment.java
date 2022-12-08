package com.infinite.hotel;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="Payment")
public class Payment {
    
    
    @Id
    @Column(name="PaymentId")
    private String paymentId;
    
    @Column(name="BillingId")
    private int billingId;
    
    @Column(name="customerId")
    private String customerid;
    
    @Column(name="payment_date")
    private Date paymentDate;
    
    @Column(name="BillingAmt")
    private int billingAmount;
    
    @Column(name="Paymode")
    @Enumerated(EnumType.STRING)
    private Paymode paymode;
    
    
    public String getPaymentId() {
        return paymentId;
    }
    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }
    public int getBillingId() {
        return billingId;
    }
    public void setBillingId(int billingId) {
        this.billingId = billingId;
    }
    public String getCustomerid() {
        return customerid;
    }
    public void setCustomerid(String customerid) {
        this.customerid = customerid;
    }
    public int getBillingAmount() {
        return billingAmount;
    }
    public void setBillingAmount(int billingAmount) {
        this.billingAmount = billingAmount;
    }
    public Paymode getPaymode() {
        return paymode;
    }
    public void setPaymode(Paymode paymode) {
        this.paymode = paymode;
    }
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
    
    



}