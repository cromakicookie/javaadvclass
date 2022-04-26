package dto;

public class HotelDTO {
	private int id;
	private String name;
	private String address;	
	private String zipcode; 
	private String cover;	
	private int price;	
	private int discount;	
	//animalType을 string으로 4자리 받아 토크닝 후 db에 저장
	private String animalType; 
	private String phoneNumber;
	private String state;
	private int userId;
	
	//********************************* getter
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
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
	public int getPrice() {
		return price;
	}
	public int getDiscount() {
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
	public int getUserId() {
		return userId;
	}
	
	//********************************* setter
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
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
	public void setPrice(int price) {
		this.price = price;
	}
	public void setDiscount(int discount) {
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
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	//********************************* Constructor
	public HotelDTO(int id, String name, String address, String zipcode, String cover, int price, int discount,
			String animalType, String phoneNumber, String state, int userId) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.zipcode = zipcode;
		this.cover = cover;
		this.price = price;
		this.discount = discount;
		this.animalType = animalType;
		this.phoneNumber = phoneNumber;
		this.state = state;
		this.userId = userId;
	}
	
	//********************************* toString
	@Override
	public String toString() {
		return "HotelDTO [id=" + id + ", name=" + name + ", address=" + address + ", zipcode=" + zipcode + ", cover="
				+ cover + ", price=" + price + ", discount=" + discount + ", animalType=" + animalType
				+ ", phoneNumber=" + phoneNumber + ", state=" + state + ", userId=" + userId + "]";
	}
}