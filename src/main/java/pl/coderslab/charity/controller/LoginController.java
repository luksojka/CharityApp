package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.coderslab.charity.entity.User;

@Controller
public class LoginController {

    @GetMapping(path = "/login")
    public String showLoginForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "login";
    }

    @GetMapping(path = "/403")
    String showAccessDeniedPage() {
        return "403";
    }

    @ModelAttribute("user")
    public User user() {
        return new User();
    }
}
