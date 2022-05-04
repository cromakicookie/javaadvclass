package dto;

public class ReviewCommentDTO {
	private String id;
	private String comment;
	private String userId;
	private String hotelReviewId;
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getComment() {
		return comment;
	}
	public String getUserId() {
		return userId;
	}
	public String getHotelReviewId() {
		return hotelReviewId;
	}

	//********************************* setter
	public void setId(String id) {
		this.id = id;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setHotelReviewId(String hotelReviewId) {
		this.hotelReviewId = hotelReviewId;
	}
	
	//********************************* Constructor
	public ReviewCommentDTO(String id, String comment, String userId, String hotelReviewId) {
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