package ru.diploma.golyshkin.service;

import ru.diploma.golyshkin.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAllProducts();

    void addProduct(Product product);

    void updateProduct(Product product);

    void deleteProductById(Long id);

    void updateRanking(Long productId, Integer ranking);

    Product findProductById(int id);

    List<Product> getProductCart(Long currentUserId);

    void deleteProductCart(Long productId);
}
