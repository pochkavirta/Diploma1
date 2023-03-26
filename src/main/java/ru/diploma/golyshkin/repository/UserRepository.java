package ru.diploma.golyshkin.repository;

import ru.diploma.golyshkin.model.User;

public interface UserRepository {
    Long createUser(User user);

    User findUserByEmailOrNickname(String email, String nickname);
}
