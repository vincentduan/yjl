import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class ProductServiceTest {

    @Autowired
    ProductService productService;

    @Test
    public void productListTestByPage(){
        Page<Product> productPage = new Page<>();
        productPage.setPageSize(3);
        productPage.setPageNo(3);
        productService.queryByPage(productPage, new Product());
        productPage.getResult().forEach(product -> {
            System.out.println(product.getName());
        });
    }

}
