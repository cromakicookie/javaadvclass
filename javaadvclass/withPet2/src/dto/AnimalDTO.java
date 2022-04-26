package dto;


public class AnimalDTO {
	private String id;
	private String name;
	private String type; 
	private String birthday;
	private String sex;
	private String userId;
	
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getType() {
		return type;
	}
	public String getBirthday() {
		return birthday;
	}
	public String getSex() {
		return sex;
	}
	public String getUserId() {
		return userId;
	}
	
	//********************************* setter
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public AnimalDTO(String id, String name, String type, String birthday, String sex, String userId) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.birthday = birthday;
		this.sex = sex;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "AnimalDTO [id=" + id + ", name=" + name + ", type=" + type + ", birthday=" + birthday + ", sex=" + sex
				+ ", userId=" + userId + "]";
	}
}
