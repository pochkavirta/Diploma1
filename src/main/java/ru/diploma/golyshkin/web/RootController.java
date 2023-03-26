package ru.diploma.golyshkin.web;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.diploma.golyshkin.service.ProductService;

@Controller
@AllArgsConstructor
public class RootController {
    private ProductService productService;

    @GetMapping("/")
    public String root(Model model) {
        model.addAttribute("products", productService.findAllProducts());
        return "index";
    }
}
