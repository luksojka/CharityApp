package pl.coderslab.charity.controller.admin;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.charity.entity.Role;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.service.RoleService;
import pl.coderslab.charity.service.UserService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class UsersController {

    private final RoleService roleService;
    private final UserService userService;

    @GetMapping("/admin/usersList")
    public String adminUsersList(Model model) {
        Role role = roleService.findRoleByName("ROLE_USER");
        List<User> users = userService.findAllByRole(role);
        model.addAttribute("users", users);
        return "admin/userList";
    }

    @GetMapping("/admin/adminList")
    public String adminAdminList(Model model) {
        Role role = roleService.findRoleByName("ROLE_ADMIN");
        List<User> users = userService.findAllByRole(role);
        model.addAttribute("users", users);
        return "admin/adminList";
    }

}
