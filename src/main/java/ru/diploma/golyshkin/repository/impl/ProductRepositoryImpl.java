package ru.diploma.golyshkin.repository.impl;

import lombok.AllArgsConstructor;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import ru.diploma.golyshkin.model.Product;
import ru.diploma.golyshkin.repository.ProductRepository;
import ru.diploma.golyshkin.repository.mapper.ProductRowMapper;

import java.util.List;

@Repository
@AllArgsConstructor
public class ProductRepositoryImpl implements ProductRepository {
    private NamedParameterJdbcTemplate jdbcTemplate;
    private ProductRowMapper rowMapper;

    private static final String FIND_ALL_PRODUCTS = "SELECT pd.products_id, u.nickname,"
            + " pd.name, pd.description, pd.price, pd.ranking, pd.registered, pd.enabled, pd.photo,"
            + " pc.category"
            + " FROM products pd"
            + " JOIN USERS u ON u.id = pd.user_id "
            + " JOIN products_category pc ON pc.products_category_id = pd.category_id"
            + "  ORDER BY products_id";

    private static final String DELETE_PRODUCT = "DELETE FROM products WHERE products_id = :id";
    private static final String ADD_NEW_PRODUCT = "INSERT INTO products(products_id, user_id, name, description, price,"
            + " category_id, photo)"
            + " VALUES (nextval('global_seq'), (select id FROM users where nickname = :nickname),"
            + " :name, :description, :price,"
            + " (SELECT products_category_id FROM products_category WHERE category = :category), :photo)";

    private static final String UPDATE_PRODUCT = "UPDATE products SET name = :name, description = :description, price = :price,"
            + " enabled = :enabled, photo = :photo,"
            + " category_id = (SELECT products_category_id FROM products_category WHERE category = :category)"
            + " WHERE products_id =:productId";

    private static final String UPDATE_RANKING = "UPDATE products SET ranking = :ranking, ranking_count = ranking_count + 1"
            + " WHERE products_id =:productId";

    private static final String SELECT_CATEGORY_BY_NAME = "SELECT category_id FROM products"
            + " WHERE category_id = (SELECT products_category_id FROM products_category WHERE category = :category)";

    private static final String SELECT_PRODUCT_BY_ID = "SELECT pd.products_id, u.nickname,"
            + " pd.name, pd.description, pd.price, pd.ranking, pd.registered, pd.enabled, pd.photo,"
            + " pc.category"
            + " FROM products pd"
            + " JOIN USERS u ON u.id = pd.user_id "
            + " JOIN products_category pc ON pc.products_category_id = pd.category_id"
            + " WHERE products_id = :id";

    private static final String SELECT_CART_PRODUCT_BY_USER_ID = "SELECT pd.products_id, u.nickname,"
            + " pd.name, pd.description, pd.price, pd.ranking, pd.registered, pd.enabled, pd.photo,"
            + " pc.category"
            + " FROM products pd"
            + " JOIN USERS u ON u.id = pd.user_id "
            + " JOIN products_category pc ON pc.products_category_id = pd.category_id"
            + " WHERE products_id IN (SELECT products_id FROM product_cart WHERE user_id = :user_id)";

    private static final String DELETE_FROM_CART_PRODUCT_BY_ID = "DELETE FROM product_cart WHERE products_id = :productId";

    @Override
    public List<Product> findAllProducts() {
        return jdbcTemplate.query(FIND_ALL_PRODUCTS, rowMapper);
    }

    @Override
    public void addProduct(Product product) {
        jdbcTemplate.update(ADD_NEW_PRODUCT,
                new MapSqlParameterSource()
                        .addValue("nickname", product.getNickName())
                        .addValue("name", product.getName())
                        .addValue("description", product.getDescription())
                        .addValue("price", product.getPrice())
                        .addValue("category", product.getCategory())
                        .addValue("photo", product.getPhoto())
        );
    }

    @Override
    public void updateProduct(Product product) {
/*        jdbcTemplate.update(UPDATE_PRODUCT,
                new MapSqlParameterSource()
                        .addValue("name", product.getName())
                        .addValue("description", product.getDescription())
                        .addValue("price", product.getPrice())
                        .addValue("enabled", product.getIsEnable())
                        .addValue("category", product.getCategory())
                        .addValue("photo", product.getPhoto())
        );*/
    }

    @Override
    public void deleteProductById(Long id) {
        jdbcTemplate.update(DELETE_PRODUCT, new MapSqlParameterSource("id", id));
    }

    @Override
    public void updateRanking(Long productId, Double ranking) {
        jdbcTemplate.update(UPDATE_RANKING, new MapSqlParameterSource()
                .addValue("productId", productId)
                .addValue("ranking", ranking));
    }

    @Override
    public String findCategory(String category) {
        return jdbcTemplate.query(SELECT_CATEGORY_BY_NAME,
                new MapSqlParameterSource("category", category),
                rs -> !rs.next() ? null : rs.getString("category"));
    }

    @Override
    public Product findProductById(int id) {
        return jdbcTemplate.query(SELECT_PRODUCT_BY_ID,
                new MapSqlParameterSource("id", id),
                rs -> !rs.next() ? null : rowMapper.mapRow(rs, id));
    }

    @Override
    public List<Product> getProductCart(Long currentUserId) {
        return jdbcTemplate.query(SELECT_CART_PRODUCT_BY_USER_ID,
                new MapSqlParameterSource("user_id", currentUserId),
                rowMapper);
    }

    @Override
    public void deleteProductCart(Long productId) {
        jdbcTemplate.update(DELETE_FROM_CART_PRODUCT_BY_ID, new MapSqlParameterSource("productId", productId));
    }

}
