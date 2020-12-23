package spring.mvc.model;

import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductRegistVO;
import spring.mvc.domain.ProductVO;

import java.util.List;

public interface ProductDAO {
    public int insertProductVO(ProductVO vo);
    public int registProductVO(ProductRegistVO vo);
    public int insertProductIMG(ProductImageVO vo);

    public int updateContent(ProductVO vo);
    public ProductVO selectSequence();

    public ProductVO getProduct(ProductVO vo);
    public List<ProductImageVO> getProductImg(ProductImageVO vo);

}
