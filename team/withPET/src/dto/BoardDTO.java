package dto;

public class BoardDTO {
	private String id;
	private String title;
	private String content;
	private String userId;
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getUserId() {
		return userId;
	}
	
	//********************************* setter
	public void setId(String id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public BoardDTO(String id, String title, String content, String userId) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "BoardDTO [id=" + id + ", title=" + title + ", content=" + content + ", userId=" + userId + "]";
	}
}