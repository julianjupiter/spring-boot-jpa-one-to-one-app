package io.github.julianjupiter.springbootjpaonetooneapp.controller;

import io.github.julianjupiter.springbootjpaonetooneapp.domain.Employee;
import io.github.julianjupiter.springbootjpaonetooneapp.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Collection;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping({ "", "/" })
    public String index(Model model, @ModelAttribute("message") String message) {
        Collection<Employee> employees = employeeService.findAll();

        model.addAttribute("pageName", "Employees");
        model.addAttribute("employees", employees);

        return "employee/index";
    }

    @GetMapping("/create")
    public String create(Model model, @ModelAttribute("employee") Employee employee) {
        model.addAttribute("pageName", "Employees - Create");

        return "employee/create";
    }

    @PostMapping("/create")
    public String save(Model model, @Valid @ModelAttribute("employee") Employee employee, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            model.addAttribute("pageName", "Employees - Create");
            return "employee/create";
        }

        employeeService.save(employee);

        redirectAttributes.addAttribute("message", "Employee has been saved!");

        return "redirect:/employees";
    }
}
