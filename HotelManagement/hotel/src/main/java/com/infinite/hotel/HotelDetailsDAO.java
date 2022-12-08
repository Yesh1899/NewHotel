package com.infinite.hotel;
import java.sql.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
public class HotelDetailsDAO {
	SessionFactory sFactory;
	//GenerateHotelId
	public String generateHotelId(){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(HotelDetails.class);
		List<HotelDetails> HotelList = cr.list();
		if(HotelList.size()==0){
			return "H001";
		}
		int id = Integer.parseInt(HotelList.get(HotelList.size()-1).getHotelId().substring(1));
		String hid = String.format("H%03d", ++id);
		return hid;
	}
	//GenerateRoomId
	public String generateRoomId() {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(Room.class);
		List<Room> roomList = cr.list();
		if(roomList.size()==0){
			return "R001";
		}
		int id = Integer.parseInt(roomList.get(roomList.size()-1).getRoomId().substring(1));
		String rid = String.format("R%03d", ++id);
		return rid;
	}
	//add hotel
	public String addhotel(HotelDetails hotel) {	
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		String hotelId=generateHotelId();
		Transaction t = session.beginTransaction();
		hotel.setHotelId(hotelId);	
		session.save(hotel);
		t.commit();
		return "Hotel Added";
	}
	// show Hotel
	public List<HotelDetails> showhotel() {
		sFactory = SessionHelper.getConnection();
		Session session=sFactory.openSession();
		Query query = session.createQuery("from HotelDetails");
		Criteria cr = session.createCriteria(HotelDetails.class);

		List<HotelDetails> hotelList =query.list();
		return hotelList;
	}
	//search Hotel
	public HotelDetails searchhotel(String hotelId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();

		Criteria cr = session.createCriteria(HotelDetails.class);
		cr.add(Restrictions.eq("hotelId", hotelId));
		List<HotelDetails> hotelList = cr.list();

		return hotelList.get(0);
	}
	public String addroom(Room room){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		String roomId = generateRoomId();
		room.setRoomId(roomId);
		room.setStatus(Status.AVAILABLE);
		Criteria cr=session.createCriteria(Room.class);
		Transaction tran = session.beginTransaction();
		session.save(room);
		tran.commit();
		session.close();

		return "Room Added Successfully...";
	}
	//ShowAvailability of Rooms
	public List<HotelDetails> showroom() {
		sFactory = SessionHelper.getConnection();
		Session session=sFactory.openSession();
		Query query = session.createQuery("from Room");
		Criteria cr = session.createCriteria(Room.class);

		List<HotelDetails> roomList =query.list();
		return roomList;
	}
	//Search Room
	public Room searchroom(String roomId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(Room.class);
		cr.add(Restrictions.eq("roomId", roomId));
		List<Room> roomList = cr.list();	
		return roomList.get(0);
	}
	//Date
	public java.util.Date conversqltDate(java.sql.Date dt) {
		java.util.Date utilDate=new Date(dt.getTime());
		return utilDate;
	}

	public int days(Date chkinDate,Date chkoutDate) {
		RoomBooking book =new RoomBooking();	
		java.util.Date checkInDate=conversqltDate(chkinDate);
		java.util.Date checkOutDate=conversqltDate(chkoutDate);
		int days=(int)((checkOutDate.getTime()-checkInDate.getTime())/(1000*60*60*24));
		days++;
		return days;
	}
	public String generateBookId(){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(RoomBooking.class);
		List<RoomBooking> bookList = cr.list();
		if(bookList.size()==0){
			return "B001";
		}
		int id = Integer.parseInt(bookList.get(bookList.size()-1).getBookId().substring(1));
		String bid = String.format("B%03d", ++id);
		return bid;
	}
	//Date
	public Date cDate() {
		java.util.Date date = new java.util.Date();
		Date cdate = new Date(date.getTime());
		return cdate;
	}
	//booking
	public String bookingRoom(RoomBooking booking) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(RoomBooking.class);
		String bookId = generateBookId();
		booking.setBookId(bookId);	
		java.util.Date date = new java.util.Date();
		Date bookDate = new Date(date.getTime());
		booking.setBookDate(bookDate);
		Transaction transaction = session.beginTransaction();
		session.save(booking);
		transaction.commit();
		session.close();	
		Room rooms = searchroom(booking.getRoomId());
		rooms.setStatus(Status.BOOKED);
		session = sFactory.openSession();
		transaction = session.beginTransaction();
		session.update(rooms);
		transaction.commit();
		session.close();
		return "Book Date: " +bookDate+"Room Booked and Have a nice vacation..";
	}
	//date
	public Date convertDate(java.util.Date dt) {
		java.sql.Date sqlDate = new java.sql.Date(dt.getTime());
		return sqlDate;
	}
	//Generate Customer Id
	public String generateCustomerId() {

		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(CustomerDetails.class);
		List<CustomerDetails> customerList = cr.list();
		if(customerList.size()==0){
			return "C001";
		}
		int id = Integer.parseInt(customerList.get(customerList.size()-1).getCustomerId().substring(1));
		String cid = String.format("C%03d", ++id);
		return cid;
	}
	public String generateAdminId() {

		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(AdminDetails.class);
		List<AdminDetails> adminList = cr.list();
		if(adminList.size()==0){
			return "A001";
		}
		int id = Integer.parseInt(adminList.get(adminList.size()-1).getAdminsId().substring(1));
		String cid = String.format("A%03d", ++id);
		return cid;
	}
	//Add Customer
	public String addCustomer(CustomerDetails customer) {	
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		String customerId=generateCustomerId();
		Transaction t = session.beginTransaction();
		customer.setCustomerId(customerId);	
		session.save(customer);
		t.commit();
		return "Customer Added";
	}
	public String addAdmin(AdminDetails admin) {	
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		String adminsId=generateAdminId();
		Transaction t = session.beginTransaction();
		admin.setAdminsId(adminsId);	
		session.save(admin);
		t.commit();
		return "Now You are an Admin";
	}
	public int UserLogin(int userId, String pass){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(CustomerDetails.class);
		cr.add(Restrictions.eq("userId", userId));
		cr.add(Restrictions.eq("pass", pass));
		List<CustomerDetails> customerList = cr.list();
		return customerList.size();
	}
	public int AdminLogin(int adminId, String pass){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(AdminDetails.class);
		cr.add(Restrictions.eq("adminId", adminId));
		cr.add(Restrictions.eq("pass", pass));
		List<AdminDetails> adminList = cr.list();
		return adminList.size();
	}
	public List<CustomerDetails> CustomerShow() {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(CustomerDetails.class);
		List<CustomerDetails> customerList = cr.list();
		return customerList;

	}
	public int billAmt(String bookId,int days) {
		RoomBooking booking=searhByBookId(bookId);
		String roomId=booking.getRoomId();
		Room room=searchById(roomId);
		int cost= room.getCostperday();
		int amt=(days*cost)+((days*cost)*18)/100;

		return amt;
	}
	public RoomBooking searhByBookId(String bookId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession(); 
		Criteria cr = session.createCriteria(RoomBooking.class);
		cr.add(Restrictions.eq("bookId", bookId));
		List<RoomBooking> bookList = cr.list();
		return bookList.get(0);
	}
	public BillingDetails searchBilling(String custId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(BillingDetails.class);
		cr.add(Restrictions.eq("customerId", custId));
		List<BillingDetails> billlist = cr.list();
		return  billlist.get(0);
	}
	public Room searchById(String roomId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession(); 
		Criteria cr = session.createCriteria(Room.class);
		cr.add(Restrictions.eq("roomId", roomId));
		List<Room> roomList = cr.list();
		return roomList.get(0);
	}
	public CustomerDetails searchcustomer(String customerId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();

		Criteria criteria = session.createCriteria(CustomerDetails.class);
		criteria.add(Restrictions.eq("customerId", customerId));
		List<CustomerDetails> customerList = criteria.list();

		return customerList.get(0);
	}

	public List<Room> showBookRooms(){
		sFactory=SessionHelper.getConnection();
		Session session=sFactory.openSession();
		Criteria cr=session.createCriteria(Room.class);
		cr.add(Restrictions.eq("status", Status.BOOKED));
		Projection projection=Projections.property("roomId");
		cr.setProjection(projection);
		List<Room> roomList=cr.list();
		return roomList;		
	}

	public List<CustomerDetails> showCust(){
		sFactory=SessionHelper.getConnection();
		Session session=sFactory.openSession();
		Criteria cr=session.createCriteria(CustomerDetails.class);
		Projection projection=Projections.property("customerId");
		cr.setProjection(projection);
		List<CustomerDetails> custList=cr.list();
		return custList;		
	}
	//Billing	
	public String billingRoom(String bookId) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr=session.createCriteria(BillingDetails.class);
		cr.add(Restrictions.eq("status", Status.BOOKED));
		Projection projection=Projections.property("CustomerId");
		BillingDetails billing=new BillingDetails();
		RoomBooking booking=searhByBookId(bookId);
		billing.setBookId(booking.getBookId());
		billing.setCustomerId(booking.getCustomerId());
		billing.setRoomId(booking.getRoomId());
		int noOfDays=days(booking.getChkinDate(), booking.getChkoutDate());
		billing.setNoOfDays(noOfDays);
		int billAmt=billAmt(bookId, noOfDays);
		billing.setBillAmt(billAmt);
		Transaction tr=session.beginTransaction();
		session.save(billing);
		tr.commit();
		session.close();	
		Room room=searchById(billing.getRoomId());
		room.setStatus(Status.AVAILABLE);
		session=sFactory.openSession();
		tr=session.beginTransaction();
		session.update(room);
		tr.commit();
		session.close();
		return  "Billing successfull and Your Bill is  "+billAmt;
	}
	public String addPayment(Payment payment) {
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(Payment.class);
		String PaymentId = generatePaymentId();
		payment.setPaymentId(PaymentId);
		java.util.Date date = new java.util.Date();
		Date paymentdate = new Date(date.getTime());
		payment.setPaymentDate(paymentdate);
		Transaction transaction = session.beginTransaction();
		session.save(payment);
		transaction.commit();
		session.close();
		return "Payment Successfull...Thanks visit again";
	}    
	public String generatePaymentId(){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Criteria cr = session.createCriteria(Payment.class);
		List<Payment> paymentList = cr.list();
		if(paymentList.size()==0){
			return "P001";
		}
		int id = Integer.parseInt(paymentList.get(paymentList.size()-1).getPaymentId().substring(1));
		String hid = String.format("P%03d", ++id);
		return hid;
	}       
	//ShowPayments      
	public List<Payment> showPayments(){
		sFactory = SessionHelper.getConnection();
		Session session = sFactory.openSession();
		Query query =  session.createQuery("from Payment");
		List<Payment> paymentlist = query.list();
		return paymentlist;
	}    
	//Billing Show
	public List<BillingDetails> showbillings(String billing) {
		sFactory = SessionHelper.getConnection();
		Session session=sFactory.openSession();
		Query query = session.createQuery("from BillingDetails");
		Criteria cr = session.createCriteria(BillingDetails.class);
		List<BillingDetails> billinglist =query.list();
		return billinglist;
	}
}  