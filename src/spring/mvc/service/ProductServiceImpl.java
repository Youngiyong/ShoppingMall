package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.mvc.domain.ProductStockVO;
import spring.mvc.domain.ProductVO;
import spring.mvc.model.ProductDAOImpl;
import spring.mvc.domain.ProductImageVO;

import java.util.List;

@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDAOImpl productDAO;

    @Override
    public int insertProductVO(ProductVO vo) {
        int result = productDAO.insertProductVO(vo);
        System.out.println("ServiceIMPl도착");
        System.out.println(vo.getP_Name());
        return result;

    }

    @Override
    public int insertProductStockVO(ProductStockVO vo) {
        int result = productDAO.insertProductStockVO(vo);
        return result;
    }

    @Override
    public int insertProductIMG(ProductImageVO vo) {
        int result = productDAO.insertProductIMG(vo);
        return result;
    }

    @Override
    public List<ProductVO> getProductList(ProductVO vo) {
        return productDAO.getProductList(vo);
    }

    @Override
    public List<ProductImageVO> getProductImg(ProductImageVO vo) {
        return productDAO.getProductImg(vo);
    }

    @Override
    public int updateContent(ProductVO vo) {
        return productDAO.updateContent(vo);
    }

    @Override
    public ProductVO selectSequence() {
        return productDAO.selectSequence();
    }


}
