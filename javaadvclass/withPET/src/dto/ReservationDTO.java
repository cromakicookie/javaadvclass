package dto;

import java.sql.Date;

public class ReservationDTO {
	private int id;
	private Date startDate;
	private Date endDate;
	private int userId;
	private int petSitterId;
	
	//********************************* getter
	public int getId() {
		return id;
	}
	public Date getStartDate() {
		return startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public int getUserId() {
		return userId;
	}
	public int getPetSitterId() {
		return petSitterId;
	}
	
	//********************************* setter
	public void setId(int id) {
		this.id = id;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setPetSitterId(int petSitterId) {
		this.petSitterId = petSitterId;
	}
	
	//********************************* Constructor
	public ReservationDTO(int id, Date startDate, Date endDate, int userId, int petSitterId) {
		super();
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.userId = userId;
		this.petSitterId = petSitterId;
	}
	public ReservationDTO(int id, Date startDate, Date endDate, int userId) {
		super();
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "ReservationDTO [id=" + id + ", startDate=" + startDate + ", endDate=" + endDate + ", userId=" + userId
				+ ", petSitterId=" + petSitterId + "]";
	}

}