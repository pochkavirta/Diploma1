package ru.diploma.golyshkin.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.diploma.golyshkin.model.Const;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.UserRepository;
import ru.diploma.golyshkin.service.UserService;
import ru.diploma.golyshkin.util.exception.ValidationException;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;

    @Override
    public Long createUser(User user) {
        boolean isCorrectPassword = user.getPassword().equals(user.getAcceptPassword());
        if (!isCorrectPassword) {
            throw new ValidationException(Const.COMPARE_PASSWORD_ERROR);
        }
        User userDB = userRepository.findUserByEmailOrNickname(user.getEmail(), user.getNickName());
        if (userDB != null) {
            boolean isEmailTaken = user.getEmail().equals(userDB.getEmail());
            if (isEmailTaken) {
                throw new ValidationException(Const.UNIQUE_EMAIL_ERROR);
            }
            boolean isNicknameTaken = user.getNickName().equals(userDB.getNickName());
            if (isNicknameTaken) {
                throw new ValidationException(Const.UNIQUE_NICKNAME_ERROR);
            }
        }
        return userRepository.createUser(user);
    }
}
