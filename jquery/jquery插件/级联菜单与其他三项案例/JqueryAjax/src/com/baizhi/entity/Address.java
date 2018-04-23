package com.baizhi.entity;

import java.util.ArrayList;
import java.util.List;

public class Address {
	private Integer id;
	private String city;
	private List<Address> addresses = new ArrayList<Address>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public Address(Integer id, String city, List<Address> addresses) {
		super();
		this.id = id;
		this.city = city;
		this.addresses = addresses;
	}

	public Address() {
		super();
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", city=" + city + ", addresses=" + addresses + "]";
	}
}