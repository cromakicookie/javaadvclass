package dto;

public class ReviewCommentDTO {
	private int id;
	private String comment;
	private int userId;
	private int hotelReviewId;
	
	//********************************* getter
	public int getId() {
		return id;
	}
	public String getComment() {
		return comment;
	}
	public int getUserId() {
		return userId;
	}
	public int getHotelReviewId() {
		return hotelReviewId;
	}

	//********************************* setter
	public void setId(int id) {
		this.id = id;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setHotelReviewId(int hotelReviewId) {
		this.hotelReviewId = hotelReviewId;
	}
	
	//********************************* Constructor
	public ReviewCommentDTO(int id, String comment, int userId, int hotelReviewId) {
		super();
		this.id = id;
		this.comment = comment;
		this.userId = userId;
		this.hotelReviewId = hotelReviewId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "ReviewCommentDTO [id=" + id + ", comment=" + comment + ", userId=" + userId + ", hotelReviewId="
				+ hotelReviewId + "]";
	}
}