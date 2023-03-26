package ru.diploma.golyshkin;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.multipart.MultipartFile;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.service.UserService;
import ru.diploma.golyshkin.util.exception.ValidationException;
import ru.diploma.golyshkin.web.user.UserRole;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@ContextConfiguration(locations = {
        "classpath:spring/spring-app.xml",
        "classpath:spring/spring-db.xml"
})
@RunWith(SpringRunner.class)
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void createUserOkTest() {
        userService.createUser(createUser());
    }

    @Test
    public void createUserError1Test() {
        try {
            User user = createUser();
            user.setAcceptPassword("35522");
            userService.createUser(user);
        } catch (ValidationException validationException) {
            System.out.println("Пароли не совпадают");
        }
    }
    @Test
    public void createUserError2Test() {
        try {
            User user = createUser();
            user.setEmail("yewocressoffa-5634@gmail.com");
            userService.createUser(user);
        } catch (ValidationException validationException) {
            System.out.println("Email уже есть");
        }
    }

    @Test
    public void createUserError3Test() {
        try {
            User user = createUser();
            user.setNickName("Uydenari");
            userService.createUser(user);
        } catch (ValidationException validationException) {
            System.out.println("Ник уже занят");
        }
    }

    private User createUser() {
        return new User().setFirstName("fn")
                         .setLastName("ln")
                         .setNickName("22")
                         .setEmail("24")
                         .setPhone("999")
                         .setPassword("355")
                         .setAcceptPassword("355")
                         .setUserRole(UserRole.USER.getRole())
                         .setPhoto(new MultipartFile() {
                             @Override
                             public String getName() {
                                 return null;
                             }

                             @Override
                             public String getOriginalFilename() {
                                 return null;
                             }

                             @Override
                             public String getContentType() {
                                 return null;
                             }

                             @Override
                             public boolean isEmpty() {
                                 return false;
                             }

                             @Override
                             public long getSize() {
                                 return 0;
                             }

                             @Override
                             public byte[] getBytes() throws IOException {
                                 return new byte[0];
                             }

                             @Override
                             public InputStream getInputStream() throws IOException {
                                 return null;
                             }

                             @Override
                             public void transferTo(File file) throws IOException, IllegalStateException {

                             }
                         });

    }
}
