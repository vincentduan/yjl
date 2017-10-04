import com.yjl.entity.Artical;
import com.yjl.service.ArticalService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class ArticleServiceTest {

    @Autowired
    ArticalService articalService;

    @Test
    public void testArticalService(){
        Artical artical = articalService.getById(1L);
        System.out.println(artical.getContent());
    }
}
