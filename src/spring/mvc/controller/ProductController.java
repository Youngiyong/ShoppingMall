package spring.mvc.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import spring.mvc.domain.ProductImageVO;
import spring.mvc.domain.ProductStockVO;
import spring.mvc.domain.ProductVO;
import spring.mvc.service.ProductService;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/admin/products.do")
    public String getProductList(ProductVO vo, Model m){
        System.out.println("getProductList 함수 호출");

        m.addAttribute("productList", productService.getProductList(vo));

        return "/admin/products";
    }
    

    @RequestMapping("/admin/upload.do")
    public String upload(ProductVO vo, ProductImageVO ivo, ProductStockVO svo, @RequestParam("file") MultipartFile[] file) throws IOException {
        System.out.println("upload 함수 호출");
        ProductImageVO imgVO = new ProductImageVO();
        ProductStockVO stockVO = new ProductStockVO();
        String fileOriginName = "";
        String fileMultiName = "";
        int result = productService.insertProductVO(vo);
        ProductVO productVO = productService.selectSequence();
        System.out.println(vo.getP_Content());
        productVO.setP_Content(vo.getP_Content());
        productService.updateContent(productVO);
        StringBuffer buffer = new StringBuffer();
        int size = 0;
        if(result>0){
                for(int i=0; i<file.length; i++){
                    System.out.println("길이 : "   + file.length);
                    fileOriginName = file[i].getOriginalFilename();
                    size += file[i].getSize();
                    File f = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\"+fileOriginName); 
                    file[i].transferTo(f); 
                    if(i==0) {
                        fileMultiName += fileOriginName;
                    } else{
                        fileMultiName += (","+fileOriginName);
                    }

                    System.out.println(fileOriginName);
                    System.out.println(ivo.getI_Ip());
                }
            imgVO.setP_Id(productVO.getP_Id());
            imgVO.setI_Ip(ivo.getI_Ip());
            imgVO.setI_Fname(fileMultiName);
            imgVO.setI_Fsize(size);
            productService.insertProductIMG(imgVO);

            stockVO.setP_Id(productVO.getP_Id());
            stockVO.setP_Size(svo.getP_Size());
            stockVO.setP_Color(svo.getP_Color());
            stockVO.setP_Count(svo.getP_Count());
            productService.insertProductStockVO(stockVO);
            }
        else System.out.println("파일 추가실패");
         return "redirect:/admin/product.do";

    }


}
