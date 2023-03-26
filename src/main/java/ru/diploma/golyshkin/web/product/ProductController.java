package ru.diploma.golyshkin.web.product;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.service.ProductService;

import java.text.DecimalFormat;
import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping(value = "products")
public class ProductController {
    private static final Long CURRENT_USER_ID = 0002L; // TODO Без авторизации заглушка текущего пользвователя
    private static final DecimalFormat DECIMAL_FORMATTER = new DecimalFormat("#.##");
    private ProductService productService;

    @PostMapping("/add")
    String addProduct(@RequestParam("name") String name,
            @RequestParam("category") String category,
            @RequestParam("price") Double price,
            @RequestParam("photo") String photo,
            @RequestParam("nickName") String nickName,
            @RequestParam("description") String description) {
        Product product = new Product()
                .setName(name)
                .setCategory(category)
                .setPrice(price)
                .setPhoto(photo)
                .setNickName(nickName)
                .setDescription(description);
        productService.addProduct(product);
        return "redirect:/";
    }

    @GetMapping("/product/{id}")
    String getProductById(@PathVariable("id") int id, Model model) {
        Product product = productService.findProductById(id);
        model.addAttribute("product", product);
        return "product/productEdit";
    }

    @GetMapping("/product/cart")
    String getProductCart(Model model) {
        List<Product> products = productService.getProductCart(CURRENT_USER_ID);
        double allProductPrice = products.stream().mapToDouble(Product::getPrice).sum();
        model.addAttribute("products", products);
        model.addAttribute("allProductPrice", allProductPrice);
        model.addAttribute("shipping", DECIMAL_FORMATTER.format(allProductPrice * 0.03));
        model.addAttribute("cartPrice", DECIMAL_FORMATTER.format(allProductPrice * 1.03));
        return "product/cart";
    }

    @PostMapping("/product/{id}")
    String deleteProductCart(@PathVariable("id") Long productId, Model model) {
        productService.deleteProductCart(productId);
        return getProductCart(model);
    }
}
