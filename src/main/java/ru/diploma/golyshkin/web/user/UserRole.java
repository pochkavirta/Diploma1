package ru.diploma.golyshkin.web.user;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum UserRole {
    USER("User"),
    ADMIN("Admin");

    private String role;
}
