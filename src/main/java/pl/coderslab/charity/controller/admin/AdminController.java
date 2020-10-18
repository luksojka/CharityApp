package pl.coderslab.charity.controller.admin;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class AdminController {

    @RequestMapping("/admin/homepage")
    public String adminHomeAction() {
        return "admin/adminHome";
    }

}
