package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductRegistVO;
import spring.mvc.domain.ProductVO;

import java.util.List;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{

    @Autowired
    private SqlSessionTemplate mybatis;

    @Override
    public int insertProductVO(ProductVO vo) {
        System.out.println("===> Mybatis insertProductVO() 호출");
        return mybatis.insert("product.insertProductVO", vo);
    }

    @Override
    public int insertProductIMG(ProductImageVO vo) {
        System.out.println("===> Mybatis insertProductIMG() 호출");
        return mybatis.insert("product.insertProductIMG", vo);
    }

    @Override
    public int registProductVO(ProductRegistVO vo) {
        System.out.println("===> Mybatis registProductVO() 호출");
        return mybatis.insert("product.registProductVO", vo);
    }

    @Override
    public ProductVO getProduct(ProductVO vo) {
        System.out.println("===> Mybatis getProduct() 호출");
        return mybatis.selectOne("product.getProduct", vo);
    }

    @Override
    public List<ProductImageVO> getProductImg(ProductImageVO vo) {
        System.out.println("===> Mybatis getProductImg() 호출");
        return mybatis.selectList("product.getProductImg", vo);
    }

    @Override
    public int updateContent(ProductVO vo) {
        System.out.println("===> Mybatis updateContent() 호출");
        return mybatis.update("product.updateContent", vo);
    }

    @Override
    public ProductVO selectSequence() {
        System.out.println("===> Mybatis selectSequence() 호출");
        return mybatis.selectOne("product.selectSequence");
    }
}
