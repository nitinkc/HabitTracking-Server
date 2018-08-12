package com.habit.DTO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.habit.entity.User;

@Repository
// Entity that needs to be managed is Student given in <>
public interface UserRepository extends JpaRepository<User, Integer> {

}