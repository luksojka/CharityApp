package pl.coderslab.charity.controller.admin;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.service.InstitutionService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class InstitutionsController {

    private final InstitutionService institutionService;

    @GetMapping("/admin/institutionsList")
    public String adminInstList(Model model) {
        List<Institution> institutions = institutionService.findAllInstitutions();
        model.addAttribute("institutions", institutions);
        return "admin/institutionList";
    }

    //    @GetMapping("/admin/deleteInstitution")
//    public String deleteInstitution (@PathVariable())
}
