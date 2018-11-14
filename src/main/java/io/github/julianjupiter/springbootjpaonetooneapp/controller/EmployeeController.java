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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class EmployeeController {

    private static final String APP_NAME = "Spring Boot Application with JPA One-To-One Relationship";
    @Autowired
    private EmployeeService employeeService;

    @ModelAttribute("appName")
    public String appName() {
        return APP_NAME;
    }

    @GetMapping({ "", "/" })
    public String index(Model model, @ModelAttribute("message") String message) {
        model.addAttribute("pageName", "Home");

        return "index";
    }

    @GetMapping("/employees")
    public String list(Model model, @ModelAttribute("message") String message) {
        Iterable<Employee> employees = employeeService.findAll();

        model.addAttribute("pageName", "Employees");
        model.addAttribute("employees", employees);

        return "employee/index";
    }

    @GetMapping("/employees/create")
    public String create(Model model, @ModelAttribute("employee") Employee employee) {
        model.addAttribute("pageName", "Employees - Create");

        return "employee/create";
    }

    @PostMapping("/employees/create")
    public String save(Model model, @Valid @ModelAttribute("employee") Employee employee, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            model.addAttribute("pageName", "Employees - Create");
            return "employee/create";
        }

        employeeService.save(employee);

        redirectAttributes.addFlashAttribute("message", "Employee has been saved!");

        return "redirect:/employees";
    }
}
