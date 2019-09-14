package com.habit.controller;

import java.net.URI;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.habit.DTO.DailyEntryRepository;
import com.habit.DTO.HabitRepository;
import com.habit.DTO.UserRepository;
import com.habit.entity.DailyEntry;
import com.habit.entity.Habit;
import com.habit.entity.User;
import com.habit.exception.HabitNotFoundException;

@RestController
public class HabitController {

	@Autowired
	private HabitRepository habitRepository;
	@Autowired
	private DailyEntryRepository dailyEntryRepository;
	@Autowired
	private UserRepository userRepository;

	// Retrieve all habits
	@GetMapping(path = "api/habits")
	public List<Habit> retrieveAllHabits() {
		return habitRepository.findAll();
	}

	// Retrieve habit by Id
	@GetMapping(path = "api/habit/{id}")
	public Resource<Habit> retrieveUserById(@PathVariable int id) {
		Optional<Habit> habit = habitRepository.findById(id);

		if (!habit.isPresent())
			throw new HabitNotFoundException("The Daily Entry with id : " + id + "  is Not Found");

		Resource<Habit> resource = new Resource<Habit>(habit.get());
		return resource;
	}

	@PostMapping("/api/daily_entry")
	public ResponseEntity<Object> createDailyEntry(@Valid @RequestBody DailyEntry dailyEntry) {
		DailyEntry saved = dailyEntryRepository.save(dailyEntry);

		URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(saved.getHabitid())
				.toUri();

		return ResponseEntity.created(location).build();
	}

	// Retrieve a day's entry by Id
	@GetMapping(path = "api/daily_entry/{id}")
	public Resource<DailyEntry> retrieveDEbyid(@PathVariable int id) {
		Optional<DailyEntry> de = dailyEntryRepository.findById(id);

		if (!de.isPresent())
			throw new HabitNotFoundException("The Daily Entry with " + id + "  is Not Found");

		Resource<DailyEntry> resource = new Resource<DailyEntry>(de.get());
		return resource;
	}

	// Retrieve all the habits of a user
	@GetMapping(path = "/api/user/{id}/habits")
	public List<Habit> retrieveHabitById(@PathVariable int id) {
		Optional<User> std = userRepository.findById(id);

		if (!std.isPresent())
			throw new HabitNotFoundException("The Daily Entry with " + id + "  is Not Found");

		return std.get().getHabits();
	}
	
	
	// Retrieve all the habits of a user for current month
		//select * from habit where habit_id in (select id from monthly_setting where user_id = 11011 and year = 2018 and month = 'JAN');
		@GetMapping(path = "api/user/{id}/{mon}/{year}")
		public List<Habit> retrieveHabitsForMonth(@PathVariable int id, String mon, int year) {
			

			if (!user.isPresent())
				throw new HabitNotFoundException("The Daily Entry with id : " + id + "  is Not Found");

			Resource<User> resource = new Resource<User>(user.get());
			return resource;
		}
		

	// Retrieve all users for a particular Habit
//	@GetMapping(path = "/api/habit/{id}/users")
//	public List<User> retrieveUserByHabit(@PathVariable int id) {
//		Optional<Habit> std = habitRepository.findById(id);
//
//		if (!std.isPresent())
//			throw new HabitNotFoundException("The Daily Entry with " + id + "  is Not Found");
//
//		return std.get().getUserInHabit();
//	}

}
