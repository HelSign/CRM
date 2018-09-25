package ua.com.helsign.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.com.helsign.crm.dao.CustomerDAO;
import ua.com.helsign.crm.entity.Customer;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerDAO customerDAO;

    @RequestMapping("/list")
    public String listCustomers(Model model) {

        List<Customer> customerList = customerDAO.getCustomers();
        model.addAttribute("customers",customerList);
        return "list-customers";
    }
}
