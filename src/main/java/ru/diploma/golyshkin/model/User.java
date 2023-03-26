package ru.diploma.golyshkin.model;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import org.springframework.web.multipart.MultipartFile;

@Accessors(chain = true)
@Getter
@Setter
public class User {
    private Long usersId;
    private String firstName;
    private String lastName;
    private String nickName;
    private String email;
    private String phone;
    private String password;
    private String acceptPassword;
    private LocalDateTime registered;
    private Boolean enabled;
    private String userRole;
    private MultipartFile photo;
}
