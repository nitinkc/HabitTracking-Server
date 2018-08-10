package com.habit.DAOService;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.habit.entity.Habit;

@Repository

// Entity that needs to be managed is Student given in <>
public interface StudentRepository extends JpaRepository<Habit, Integer> {

}
