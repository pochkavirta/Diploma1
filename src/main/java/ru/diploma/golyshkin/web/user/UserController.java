package ru.diploma.golyshkin.web.user;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.service.UserService;

@Controller
@AllArgsConstructor
@RequestMapping(value = "user")
public class UserController {

    private UserService userService;

    @GetMapping("/login")
    public String login() {
        System.out.println("============= 2===================");
        return "user/userLogin";
    }
    @GetMapping("/registration")
    public String registration() {
        System.out.println("============= 3===================");
        return "user/userRegistration";
    }

    @PostMapping("user/registration")
    public String createUser(User user) {
        userService.createUser(user);
        //TODO подумать куда отправлять после регистрации. Предгалаю на главную страницу и там типо уже залогинен
        //TODO СЛОЖНО добавить окошко с успешной регистрации
        return "userRegistration";
    }
}
