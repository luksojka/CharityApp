package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.entity.Role;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.service.InstitutionService;
import pl.coderslab.charity.service.RoleService;
import pl.coderslab.charity.service.UserService;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class AdminController {

    private final InstitutionService institutionService;
    private final RoleService roleService;
    private final UserService userService;

    @RequestMapping("/admin/homepage")
    public String adminHomeAction(){
        return "admin/adminHome";
    }

    @GetMapping("/admin/institutionsList")
    public String adminInstList(Model model){
        List<Institution> institutions = institutionService.findAllInstitutions();
        model.addAttribute("institutions", institutions);
        return "admin/institutionList";
    }

    @GetMapping("/admin/usersList")
    public String adminUsersList(Model model){

        Role role = roleService.findRoleByName("ROLE_USER");
        List<User> users = userService.findAllByRole(role);

        model.addAttribute("users", users);
        return "admin/userList";
    }

    @GetMapping("/admin/adminList")
    public String adminAdminList(Model model){

        Role role = roleService.findRoleByName("ROLE_ADMIN");
        List<User> users = userService.findAllByRole(role);
        model.addAttribute("users", users);
        return "admin/adminList";
    }
//
//    @GetMapping("/admin/deleteInstitution")
//    public String deleteInstitution (@PathVariable())

}
