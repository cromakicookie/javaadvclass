package dto;

public class PetSitterDTO {
	private int id;
	private String certificated;
	private String address;
	private String animalType;
	private String phoneNumber;
	private int userId;
	
	//********************************* getter
	public int getId() {
		return id;
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
	public int getUserId() {
		return userId;
	}
	
	//********************************* setter
	public void setId(int id) {
		this.id = id;
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
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public PetSitterDTO(int id, String certificated, String address, String animalType, String phoneNumber,
			int userId) {
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