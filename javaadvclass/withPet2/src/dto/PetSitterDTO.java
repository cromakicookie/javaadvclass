package dto;

public class PetSitterDTO {
	private String id;
	private String content;
	private String certificated; //사진 웹으로 올리는 경로 dao 메소드 구현
	private String address;
	private String animalType;
	private String phoneNumber;
	private String userId;
	
	//********************************* getter
	public String getId() {
		return id;
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
	
	//********************************* setter
	public void setId(String id) {
		this.id = id;
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
	public PetSitterDTO(String id, String certificated, String address, String animalType, String phoneNumber,
			String userId) {
		super();
		this.id = id;
		this.certificated = certificated;
		this.address = address;
		this.animalType = animalType;
		this.phoneNumber = phoneNumber;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "PetSitterDTO [id=" + id + ", certificated=" + certificated + ", address=" + address + ", animalType="
				+ animalType + ", phoneNumber=" + phoneNumber + ", userId=" + userId + "]";
	}
}
