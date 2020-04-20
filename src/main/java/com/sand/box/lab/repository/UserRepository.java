package com.sand.box.lab.repository;

import com.sand.box.lab.domain.User;
import com.veinhorn.spring.sqlfile.SqlFromResource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Transactional(readOnly = true)
    @SqlFromResource(path = "select_top_users.sql")
    List<User> findAll();

    @Modifying(flushAutomatically = true)
    @SqlFromResource(path = "select_user_by_id.sql")
    User findById(int userId);

    @SqlFromResource(path = "select_user_by_name.sql")
    User findByUsername(String username);
}
