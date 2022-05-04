package dto;

public class ReviewDTO {
	private String id;
	private String score;  // 5/2.5 최대점수5 최저1 소수점은 1의자리까지만  데이터 입력형식 1,1
	private String content;
	private String name;
	private String userId; //작성자 
	private String fkId; //평가되는 펫시터
	private String creatAt;
	private String countLike;
	private String commentId;
	private String comment;
	private String commentUserId;
	private String commentUserName;
	
	
	
	
	
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCommentUserId() {
		return commentUserId;
	}
	public void setCommentUserId(String commentUserId) {
		this.commentUserId = commentUserId;
	}
	public String getCommentUserName() {
		return commentUserName;
	}
	public void setCommentUserName(String commentUserName) {
		this.commentUserName = commentUserName;
	}
	public String getId() {
		return id;
	}
	public String getScore() {
		return score;
	}
	public String getContent() {
		return content;
	}
	public String getName() {
		return name;
	}
	public String getUserId() {
		return userId;
	}
	public String getFkId() {
		return fkId;
	}
	public String getCreatAt() {
		return creatAt;
	}
	public String getCountLike() {
		return countLike;
	}
	
	
	
	public void setId(String id) {
		this.id = id;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setFkId(String fkId) {
		this.fkId = fkId;
	}
	public void setCreatAt(String creatAt) {
		this.creatAt = creatAt;
	}
	public void setCountLike(String countLike) {
		this.countLike = countLike;
	}
	public ReviewDTO(String id, String score, String content, String name, String userId, String fkId, String creatAt,
			String countLike, String commentId, String comment, String commentUserId, String commentUserName) {
		super();
		this.id = id;
		this.score = score;
		this.content = content;
		this.name = name;
		this.userId = userId;
		this.fkId = fkId;
		this.creatAt = creatAt;
		this.countLike = countLike;
		this.commentId = commentId;
		this.comment = comment;
		this.commentUserId = commentUserId;
		this.commentUserName = commentUserName;
	}
	public ReviewDTO(String id, String score, String content, String name, String userId, String fkId, String creatAt,
			String countLike) {
		super();
		this.id = id;
		this.score = score;
		this.content = content;
		this.name = name;
		this.userId = userId;
		this.fkId = fkId;
		this.creatAt = creatAt;
		this.countLike = countLike;
	}
	@Override
	public String toString() {
		return "ReviewDTO [id=" + id + ", score=" + score + ", content=" + content + ", name=" + name + ", userId="
				+ userId + ", fkId=" + fkId + ", creatAt=" + creatAt + ", countLike=" + countLike + ", commentId="
				+ commentId + ", comment=" + comment + ", commentUserId=" + commentUserId + ", commentUserName="
				+ commentUserName + "]";
	}

	
	
	

}