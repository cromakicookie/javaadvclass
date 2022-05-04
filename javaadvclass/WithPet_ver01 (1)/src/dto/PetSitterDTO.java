package dto;

public class PetSitterDTO {
	private String id;
	private String image;
	private String content;
	private String certificated; //사진 웹으로 올리는 경로 dao 메소드 구현
	private String address;
	private String animalType;
	private String phoneNumber;
	private String userId;
	private String status;
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getImage() {
		return image;
	}
	public String getContent() {
		return content;
	}
	public String getCertificated() {
		return certificated;
	}
	public String getAddress() {
		return address;
	}
	public String getAnimalType() {
		return animalType;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getUserId() {
		return userId;
	}
	public String getStatus() {
		return status;
	}
	
	//********************************* setter
	public void setId(String id) {
		this.id = id;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setCertificated(String certificated) {
		this.certificated = certificated;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public PetSitterDTO(String id, String image, String content, String certificated, String address, String animalType, String phoneNumber,
			String userId, String status) {
		super();
		this.id = id;
		this.image = image;
		this.content = content;
		this.certificated = certificated;
		this.address = address;
		this.animalType = animalType;
		this.phoneNumber = phoneNumber;
		this.userId = userId;
		this.status = status;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "PetSitterDTO [id=" + id + ", certificated=" + certificated + ", address=" + address + ", animalType="
				+ animalType + ", phoneNumber=" + phoneNumber + ", userId=" + userId + "]";
	}
}