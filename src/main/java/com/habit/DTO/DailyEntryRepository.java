package com.habit.DTO;

import javax.validation.Valid;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.habit.entity.DailyEntry;
import com.habit.entity.Habit;

@Repository
// Entity that needs to be managed is Student given in <>
public interface DailyEntryRepository extends JpaRepository<DailyEntry, Integer> {

}
