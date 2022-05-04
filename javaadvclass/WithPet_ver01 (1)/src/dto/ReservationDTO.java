package dto;

public class ReservationDTO {
	private String id;
	private String startDate;
	private String endDate;
	private String userId;
	private String petSitterId; 
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getStartDate() {
		return startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public String getUserId() {
		return userId;
	}
	public String getPetSitterId() {
		return petSitterId;
	}
	
	//********************************* setter
	public void setId(String id) {
		this.id = id;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setPetSitterId(String petSitterId) {
		this.petSitterId = petSitterId;
	}
	
	//********************************* Constructor
	public ReservationDTO(String id, String startDate, String endDate, String userId, String petSitterId) {
		super();
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.userId = userId;
		this.petSitterId = petSitterId;
	}
	public ReservationDTO(String id, String startDate, String endDate, String userId) {
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