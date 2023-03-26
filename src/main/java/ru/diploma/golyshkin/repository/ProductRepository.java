package ru.diploma.golyshkin.repository;

import ru.diploma.golyshkin.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> findAllProducts();

    void addProduct(Product product);

    void updateProduct(Product product);

    void deleteProductById(Long id);

    void updateRanking(Long productId, Double ranking);

    String findCategory(String category);

    Product findProductById(int id);

    List<Product> getProductCart(Long currentUserId);

    void deleteProductCart(Long productId);
}
