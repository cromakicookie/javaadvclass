package dto;

public class HotelDTO {
	private String id;
	private String name;
	private String content;
	private String address;	
	private String zipcode; 
	private String cover;	
	private String price;	
	private String discount;	
	//animalType을 string으로 4자리 받아 토크닝 후 db에 저장
	private String animalType; // JSP에서 0000~1111을 받아오기 
	private String phoneNumber;
	private String state;
	private String userId;
	private String status;
	
	
	
	
	//********************************* getter
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getContent() {
		return content;
	}
	public String getAddress() {
		return address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public String getCover() {
		return cover;
	}
	public String getPrice() {
		return price;
	}
	public String getDiscount() {
		return discount;
	}
	public String getAnimalType() {
		return animalType;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getState() {
		return state;
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
	public void setName(String name) {
		this.name = name;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public HotelDTO(String id, String name, String content, String address, String zipcode, String cover, String price,
			String discount, String animalType, String phoneNumber, String state, String userId, String status) {
		super();
		this.id = id;
		this.name = name;
		this.content = content;
		this.address = address;
		this.zipcode = zipcode;
		this.cover = cover;
		this.price = price;
		this.discount = discount;
		this.animalType = animalType;
		this.phoneNumber = phoneNumber;
		this.state = state;
		this.userId = userId;
		this.status = status;
	}
	@Override
	public String toString() {
		return "HotelDTO [id=" + id + ", name=" + name + ", content=" + content + ", address=" + address + ", zipcode="
				+ zipcode + ", cover=" + cover + ", price=" + price + ", discount=" + discount + ", animalType="
				+ animalType + ", phoneNumber=" + phoneNumber + ", state=" + state + ", userId=" + userId + " + status + ]";
	}
	

}
