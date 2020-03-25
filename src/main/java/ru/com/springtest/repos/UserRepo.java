package ru.com.springtest.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.com.springtest.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}