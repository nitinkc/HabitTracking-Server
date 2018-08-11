package com.habit.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@Column(name = "user_id")
	private Integer user_id;
	
	private String user_email;
	private String password;
	private String first_name;
	private String last_name;
	private int age;
	
	
	//The mapped by attribute is the variable declared in the other class
	@ManyToMany(mappedBy="userInHabit")
	private List<Habit> habits = new ArrayList<Habit>();
	
	//private List<Habit> habits;
	//The Above does not work. FIND OUT WHY

	public User() {
	}
	
	public Integer getUser_id() {
		return user_id;
	}


	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}


	public List<Habit> getHabits() {
		return habits;
	}


	public void setHabits(List<Habit> habits) {
		this.habits = habits;
	}

	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
