/**
 * 
 */
package com.market.struts.action;


public class goods {

	String id;
String dataid;
String name;
String amount;
String price;
String category;
String seller;
String des;
int buyamount=0;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}

public String getAmount() {
	return amount;
}
public void setAmount(String amount) {
	this.amount = amount;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getSeller() {
	return seller;
}
public void setSeller(String seller) {
	this.seller = seller;
}
public String getDes() {
	return des;
}
public void setDes(String des) {
	this.des = des;
}

public int getBuyamount() {
	return buyamount;
}
public void setBuyamount(int buyamount) {
	this.buyamount = buyamount;
}
public String getDataid() {
	return dataid;
}
public void setDataid(String dataid) {
	this.dataid = dataid;
}
}
