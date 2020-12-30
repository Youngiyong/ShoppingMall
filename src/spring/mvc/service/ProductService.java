package spring.mvc.service;

import spring.mvc.domain.*;

import java.util.List;

public interface ProductService {
    public int insertProductVO(ProductVO vo);
    public int insertProductStockVO(ProductStockVO vo);
    public int insertProductIMG(ProductImageVO vo);

    public int updateContent(ProductVO vo);
    public ProductVO selectSequence();

    //상품 정보 전체 불러오기
    public List<ProductVO> getProductList(ProductVO vo);
    public List<ProductImageVO> getProductImg(List<ProductImageVO> vo);

    //상품 삭제 메소드 순서 : Stock -> Image -> Product
    public int deleteProductList(List<ProductVO> vo);
    public int deleteProductImageList(List<ProductVO> vo);
    public int deleteProductStockList(List<ProductVO> vo);

    //상품 수정 눌렀을시 정보 불러오는 메소드
    public ProductVO selectProductIDInfo(ProductVO vo);
    public ProductImageVO selectProductImageIDInfo(ProductVO vo);
    public ProductStockVO selectProductStockIDInfo(ProductVO vo);

    //상품 수정시 업데이트 메소드
    public int updateProductImageNULL(ProductVO vo);
    public int updateProductVO(ProductVO vo);
    public int updateProductImageVO(ProductImageVO vo);
    public int updateProductStockVO(ProductStockVO vo);

    public List<ProductImageVO> selectCartImgList(List<ProductVO> vo);
    public List<ProductVO> getCartProductList(List<ProductVO> vo);

}
