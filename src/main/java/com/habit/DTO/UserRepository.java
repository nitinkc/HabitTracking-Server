package com.habit.DTO;

import com.habit.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
// Entity that needs to be managed is Student given in <>
public interface UserRepository extends JpaRepository<User, Integer> {

}