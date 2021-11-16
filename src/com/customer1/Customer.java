package com.customer1;

public class Customer {

		private int id;
		private String  firstName;
		private String  middleName;
		private String LastName;
		private String phoneNumber;
		private String gmail;
		private String  address1;
		private String address2;
		private String  nic;
		private String  userName;
		private String password;
		private String province;
		private int age;
		private String city;
		
		
		
		
		//contructer
		
		public Customer(int id, String firstName, String middleName, String lastName, String phoneNumber, String gmail,
				String address1, String address2, String nic, String userName, String password, String province,
				int age, String city) {
			super();
			this.id = id;
			this.firstName = firstName;
			this.middleName = middleName;
			this.LastName = lastName;
			this.phoneNumber = phoneNumber;
			this.gmail = gmail;
			this.address1 = address1;
			this.address2 = address2;
			this.nic = nic;
			this.userName = userName;
			this.password = password;
			this.province = province;
			this.age = age;
			this.city = city;
		
		
		}

		public int getId() { 
			return id;
		}

		public String getFirstName() {
			return firstName;
		}

		public String getMiddleName() {
			return middleName;
		}

		public String getLastName() {
			return LastName;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public String getGmail() {
			return gmail;
		}

		public String getAddress1() {
			return address1;
		}

		public String getAddress2() {
			return address2;
		}

		public String getNic() {
			return nic;
		}

		public String getUserName() {
			return userName;
		}

		public String getPassword() {
			return password;
		}

		public String getProvince() {
			return province;
		}

		public int getAge() {
			return age;
		}

		public String getCity() {
			return city;
		}
		

}