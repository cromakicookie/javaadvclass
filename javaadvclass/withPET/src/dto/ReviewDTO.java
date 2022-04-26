package dto;

public class ReviewDTO {
	private int id;
	private float score;
	private String content;
	private int userId;
	private int hotelId;
	private int petSitterId;
	
	//********************************* getter
	public int getId() {
		return id;
	}
	public float getScore() {
		return score;
	}
	public String getContent() {
		return content;
	}
	public int getUserId() {
		return userId;
	}
	public int getHotelId() {
		return hotelId;
	}
	public int getPetSitterId() {
		return petSitterId;
	}
	
	//********************************* setter
	public void setId(int id) {
		this.id = id;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public void setPetSitterId(int petSitterId) {
		this.petSitterId = petSitterId;
	}
	
	//********************************* Constructor
	public ReviewDTO(int id, float score, String content, int userId, int hotelId, int petSitterId) {
		super();
		this.id = id;
		this.score = score;
		this.content = content;
		this.userId = userId;
		this.hotelId = hotelId;
		this.petSitterId = petSitterId;
	}
	//********************************* toString
	@Override
	public String toString() {
		return "ReviewDTO [id=" + id + ", score=" + score + ", content=" + content + ", userId=" + userId + ", hotelId="
				+ hotelId + ", petSitterId=" + petSitterId + "]";
	}
}