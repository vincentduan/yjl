import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.entity.ProductWithBLOBs;
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

    @Test
    public void updateProductWithBLobs(){
        String name = "2222";
        String category = "1";
        String evaluate = "evvvvv";
        String brief = "<p>dfsdfsdfsdf<p>";
        ProductWithBLOBs productWithBLOBs = new ProductWithBLOBs();
        productWithBLOBs.setId(2L);
        productWithBLOBs.setName(name);
        productWithBLOBs.setCategory(category);
        productWithBLOBs.setEvaluate(evaluate);
        productWithBLOBs.setBrief(brief.getBytes());
        int status = productService.updateProductWithBLOBsById(productWithBLOBs);
        System.out.println(status);
    }

    @Test
    public void selectProductWithBlob(){
        ProductWithBLOBs productWithBLOBsById = productService.getProductWithBLOBsById(2L);
        System.out.println(new String(productWithBLOBsById.getBrief()));
    }

}
