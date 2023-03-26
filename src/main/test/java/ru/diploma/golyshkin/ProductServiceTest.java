package ru.diploma.golyshkin;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.service.ProductService;

import java.time.LocalDateTime;

@ContextConfiguration(locations = {
        "classpath:spring/spring-app.xml",
        "classpath:spring/spring-db.xml"
})
@RunWith(SpringRunner.class)
public class ProductServiceTest {

    @Autowired
    private ProductService productService;

    @Test
    public void deleteProductCart() {
        productService.deleteProductCart(1L);
    }
    @Test
    public void findAllProducts() {
        productService.findAllProducts();
    }
    @Test
    public void addProduct() {
        productService.addProduct(createProduct());
    }
    @Test
    public void updateProduct() {
        productService.updateProduct(createProduct());
    }
    @Test
    public void deleteProductById() {
        productService.deleteProductById(1L);
    }
    @Test
    public void updateRanking() {
        productService.updateRanking(1L, 9);
    }
    @Test
    public void findProductById() {
        productService.findProductById(99);
    }
    @Test
    public void getProductCart() {
        productService.getProductCart(1L);
    }

    private Product createProduct() {
        return new Product()
                .setId(4000L)
                .setNickName("nickname")
                .setName("name")
                .setDescription("description")
                .setPrice(2.0)
                .setRanking(2.0)
                .setRegisterDate(LocalDateTime.now())
                .setIsEnable(Boolean.TRUE)
                .setCategory("Крупная бытовая техника")
                .setPhoto("photo");
    }
}
