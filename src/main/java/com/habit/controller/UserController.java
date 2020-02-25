package com.habit.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.habit.DTO.UserRepository;
import com.habit.entity.Habit;
import com.habit.entity.User;
import com.habit.exception.HabitNotFoundException;

@RestController
public class UserController {

	@Autowired
	private UserRepository userRepository;

	// Retrieve all habits
	@GetMapping(path = "api/users")
	public List<User> retrieveAllUsers() {
		return userRepository.findAll();
	}

	// Retrieve habit by Id
	@GetMapping(path = "api/user/{id}")
	public Resource<User> retrieveUserById(@PathVariable int id) {
		Optional<User> user = userRepository.findById(id);

		if (!user.isPresent())
			throw new HabitNotFoundException("The Daily Entry with id : " + id + "  is Not Found");

		Resource<User> resource = new Resource<User>(user.get());
		return resource;
	}
}
