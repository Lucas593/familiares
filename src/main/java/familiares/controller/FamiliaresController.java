package familiares.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import familiares.model.Familiares;

@Controller
@RequestMapping("/familiares")
public class FamiliaresController {
	@RequestMapping("/showForms")
	public String showForm(Model familiaresModel) {

		Familiares familiares = new Familiares();
		familiaresModel.addAttribute("familiares", familiares);
		return "familiares-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("familiares") Familiares familiaresModel,
			BindingResult bindingResult) {

		System.out.print("Name " + familiaresModel.getNome() + " " + bindingResult.hasErrors());

		if (bindingResult.hasErrors())
			return "familiares-form";

		return "familiares-confirmation";
	}
}
