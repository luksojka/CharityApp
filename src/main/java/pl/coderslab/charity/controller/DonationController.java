package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.service.CategoryService;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import java.util.List;

@Controller
public class DonationController {

    private final DonationService donationService;

    private final CategoryService categoryService;

    private final InstitutionService institutionService;

    public DonationController(DonationService donationService, CategoryService categoryService, InstitutionService institutionService) {
        this.donationService = donationService;
        this.categoryService = categoryService;
        this.institutionService = institutionService;
    }

    @GetMapping("/form")
    public String donationForm(Model model){
        Donation donation = new Donation();
        model.addAttribute("donation", donation);
        return "form";
    }

    @ModelAttribute("categories")
    public List<Category> findAllCategories() {
        return categoryService.findAllCategories();
    }

    @ModelAttribute("institutions")
    public List<Institution> findAllInstitutions() {
        return institutionService.findAllInstitutions();
    }
}
