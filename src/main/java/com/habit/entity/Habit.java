package com.habit.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "habit")
public class Habit {
	
	@Id
	@Column(name="habit_id")
	private Integer habit_id;

	@Column(name = "habit_name")
	private String habit_name;
	
	private String active;
	private String category;

	//Name in the Other table (User)
	@ManyToMany
	@JoinTable(
			name = "joined_table",
			joinColumns = @JoinColumn(name = "habit_id"),
			inverseJoinColumns= @JoinColumn(name = "user_id")
			)
	private List<User> userInHabit = new ArrayList<User>();
	

	// Below initiates RECUSRIVE CALLS.
//	public List<User> getUserInHabit() {
//		return userInHabit;
//	}


	public Habit() {
		//Whenever argument-ful constructor is made, ALWAYS make a no-arg constructor
	}
	
	
	public Habit(Integer habit_id, String habit_name, String active, String category) {
		super();
		this.habit_id = habit_id;
		this.habit_name = habit_name;
		this.active = active;
		this.category = category;
	}

	
	public Integer getHabit_id() {
		return habit_id;
	}


	public void setHabit_id(Integer habit_id) {
		this.habit_id = habit_id;
	}
	

	public String getHabit_name() {
		return habit_name;
	}

	public void setHabit_name(String habit_name) {
		this.habit_name = habit_name;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
}
