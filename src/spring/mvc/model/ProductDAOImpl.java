package spring.mvc.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductStockVO;
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
    public int insertProductStockVO(ProductStockVO vo) {
        System.out.println("===> Mybatis insertProductStockVO() 호출");
        return mybatis.insert("product.insertProductStockVO", vo);
    }

    @Override
    public List<ProductVO> getProductList(ProductVO vo) {
        System.out.println("===> Mybatis getProductList() 호출");
        return mybatis.selectList("product.getProductList", vo);
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

    @Override
    public int deleteProductList(List<ProductVO> vo) {
        System.out.println("===> Mybatis deleteProductList() 호출");
        return mybatis.delete("product.deleteProductList", vo);
    }
    @Override
    public int deleteProductImageList(List<ProductVO> vo) {
        System.out.println("===> Mybatis deleteProductImageList() 호출");
        return mybatis.delete("product.deleteProductImageList", vo);
    }

    @Override
    public int deleteProductStockList(List<ProductVO> vo) {
        System.out.println("===> Mybatis deleteProductStockList() 호출");
        return mybatis.delete("product.deleteProductStockList", vo);
    }
}
