package com.habit.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daily_entry", schema = "HabitTracking")
public class DailyEntry {

	//Hibernate requires that entity tables have primary keys. End of story.
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id_dly_ent")
	private int id_daily_entry;

	@Column(name = "habit_id")
	private int Habitid;
	
	private Date date;
	private String response;
	private Date date_modified;
	
	@Column(name = "modifiedBy")
	private int modified_by;

	//Default Constructor
	public DailyEntry (){
		
	}
	
	

	public DailyEntry(int habitid, Date date, String response, Date date_modified, int modified_by) {
		super();
		Habitid = habitid;
		this.date = date;
		this.response = response;
		this.date_modified = date_modified;
		this.modified_by = modified_by;
	}



	public int getHabitid() {
		return Habitid;
	}

	public void setHabitid(int habitid) {
		Habitid = habitid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

	public Date getDate_modified() {
		return date_modified;
	}

	public void setDate_modified(Date date_modified) {
		this.date_modified = date_modified;
	}

	public int getModified_by() {
		return modified_by;
	}

	public void setModified_by(int modified_by) {
		this.modified_by = modified_by;
	} 
	
	public int getId_daily_entry() {
		return id_daily_entry;
	}

	public void setId_daily_entry(int id_daily_entry) {
		this.id_daily_entry = id_daily_entry;
	}
}