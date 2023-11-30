package com.Classes;


//Fields to store payment information
public class PaymentClass {
	private int pid;
	private String username;
	private String paymentEmail;
	private String Country;
	private String City;
	private String cardType;
	private String CardNumber;
	private String CardExp;
	private int CardCVV;
	public int getPid() {
		return pid;
	}
	
	//Getter methos 
	public String getUsername() {
		return username;
	}
	public String getPaymentEmail() {
		return paymentEmail;
	}
	public String getCountry() {
		return Country;
	}
	public String getCity() {
		return City;
	}
	public String getCardType() {
		return cardType;
	}
	public String getCardNumber() {
		return CardNumber;
	}
	public String getCardExp() {
		return CardExp;
	}
	public int getCardCVV() {
		return CardCVV;
	}
	
	//setter methos 
	public void setPid(int pid) {
		this.pid = pid;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPaymentEmail(String paymentEmail) {
		this.paymentEmail = paymentEmail;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public void setCity(String city) {
		City = city;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public void setCardNumber(String cardNumber) {
		CardNumber = cardNumber;
	}
	public void setCardExp(String cardExp) {
		CardExp = cardExp;
	}
	public void setCardCVV(int cardCVV) {
		CardCVV = cardCVV;
	}
	
	
}
