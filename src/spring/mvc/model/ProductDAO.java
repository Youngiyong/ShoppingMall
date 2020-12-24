package spring.mvc.model;

import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductStockVO;
import spring.mvc.domain.ProductVO;

import java.util.List;

public interface ProductDAO {
    public int insertProductVO(ProductVO vo);
    public int insertProductStockVO(ProductStockVO vo);
    public int insertProductIMG(ProductImageVO vo);

    public int updateContent(ProductVO vo);
    public ProductVO selectSequence();
    public List<ProductVO> getProductList(ProductVO vo);
    public List<ProductImageVO> getProductImg(ProductImageVO vo);

}
