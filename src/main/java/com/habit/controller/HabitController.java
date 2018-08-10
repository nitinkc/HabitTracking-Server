package com.habit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.habit.DTO.HabitRepository;
import com.habit.entity.Habit;

@RestController
public class HabitController {

	@Autowired
	private HabitRepository habitRepository;

	// Retrieve all habits
	@GetMapping(path = "api/habits")
	public List<Habit> retrieveAllHabits() {
		return habitRepository.findAll();
	}

	// Retrieve all habits
	@GetMapping(path = "api/habit/{id}")
	public List<Habit> retrieveHabitById() {
		System.out.println("Testing");

		return habitRepository.findAll();
	}

}
