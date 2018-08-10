package com.habit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "habit")
public class Habit {
	
	@Id
	private int id;
	
	@Column(name = "last_name")
	private String habit_name;
	
	private String active;
	private String category;
	
	public Habit() {
		//Whenever argument-ful constructor is made, ALWAYS make a no-arg constructor
	}
	
	
	public Habit(int id, String habit_name, String active, String category) {
		super();
		this.id = id;
		this.habit_name = habit_name;
		this.active = active;
		this.category = category;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
