package com.sand.box.lab.service;

import com.sand.box.lab.domain.User;
import com.sand.box.lab.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> findAll(int id) {
        return userRepository.findAll();
    }
}
