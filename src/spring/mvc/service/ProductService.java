package spring.mvc.service;

import spring.mvc.domain.*;

import java.util.List;

public interface ProductService {
    public int insertProductVO(ProductVO vo);
    public int registProductVO(ProductRegistVO vo);
    public int insertProductIMG(ProductImageVO vo);

    public int updateContent(ProductVO vo);
    public ProductVO selectSequence();

    public ProductVO getProduct(ProductVO vo);
    public List<ProductImageVO> getProductImg(ProductImageVO vo);

}
