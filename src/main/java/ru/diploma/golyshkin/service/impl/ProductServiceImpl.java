package ru.diploma.golyshkin.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.model.User;
import ru.diploma.golyshkin.repository.ProductRepository;
import ru.diploma.golyshkin.repository.UserRepository;
import ru.diploma.golyshkin.service.ProductService;

import java.util.List;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
    private static final String DEFAULT_USER_NICK_NAME = "DEFAULT";
    private static final String DEFAULT_CATEGORY = "Категория не определена";
    private ProductRepository productRepository;
    private UserRepository userRepository;

    @Override
    public List<Product> findAllProducts() {
        return productRepository.findAllProducts();
    }

    @Override
    public void addProduct(Product product) {
        User user = userRepository.findUserByEmailOrNickname("", product.getNickName());
        if (user == null) {
            product.setNickName(DEFAULT_USER_NICK_NAME);
        }
        String category = productRepository.findCategory(product.getCategory());
        if (category == null) {
            product.setCategory(DEFAULT_CATEGORY);
        }
        productRepository.addProduct(product);
    }

    @Override
    public void updateProduct(Product product) {

        productRepository.updateProduct(product);
    }

    @Override
    public void deleteProductById(Long id) {
        //TODO логика, что у пользователя есть  права на удаление. Можно подстроить удаление
        productRepository.deleteProductById(id);
    }

    // Тут главная фишка, что привыкли все, что Service и Dao не отличаются по набору атрибутов
    // А тут для productRepository используется другой тип - Double вместо Integer
    @Override
    public void updateRanking(Long productId, Integer ranking) {
        //TODO Пользователь ставит рейтинг какому то товару от 1 до 5
        // TODO Находим товар, находим его текущий рейтинг и кол-во оценок
        //TODO Расчитываем какой средний рейтинг получается
        Double rankingAverage = 4.4;
        productRepository.updateRanking(productId, rankingAverage);
    }

    @Override
    public Product findProductById(int id) {
        return productRepository.findProductById(id);
    }

    @Override
    public List<Product> getProductCart(Long currentUserId) {
        return productRepository.getProductCart(currentUserId);
    }

    @Override
    public void deleteProductCart(Long productId) {
        productRepository.deleteProductCart(productId);
    }

}
