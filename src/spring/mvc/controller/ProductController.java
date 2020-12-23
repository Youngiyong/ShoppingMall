package spring.mvc.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import spring.mvc.domain.ProductImageVO;
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
//
//    @RequestMapping("/admin/upload.do")
//    public String upload(ProductVO vo, ProductImageVO voimg ,MultipartHttpServletRequest request, @RequestParam("file") MultipartFile[] file) throws Exception{
//
//        int result = productService.insertProductVO(vo);
//
//        String fileOriginName = "";
//        String fileMultiName = "";
//
//
//        for(int i=0; i<file.length; i++) {
//            ProductImageVO imgVO = new ProductImageVO();
//            imgVO.setFile(file[i]);
//            fileOriginName = file[i].getOriginalFilename();
//            System.out.println("기존 파일명 : " + fileOriginName);
//            SimpleDateFormat formatter = new SimpleDateFormat("YYYYMMDD_HHMMSS_" + i);
//            Calendar now = Calendar.getInstance();
//            //확장자명
//            String extension = fileOriginName.split("\\.")[1];
//            //fileOriginName에 날짜+.+확장자명으로 저장시킴.
//            fileOriginName = formatter.format(now.getTime()) + "." + extension;
//            System.out.println("변경된 파일명 : " + fileOriginName);
//            File f = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\" + fileOriginName);
//
//            file[i].transferTo(f);
//            if (i == 0) {
//                fileMultiName += fileOriginName;
//            } else {
//                fileMultiName += "," + fileOriginName;
//            }
//
//        }
//        System.out.println("*"+fileMultiName);
//        voimg.setI_Fname(fileMultiName);
//        productService.insertProductIMG(voimg);
//        return "redirect:/admin/product.do";

    @RequestMapping("/admin/upload.do")
    public String upload(ProductVO vo,  @RequestParam("file") MultipartFile[] file) throws IOException {


        System.out.println("upload 함수 호출");
        String fileOriginName = "";
        String fileMultiName = "";

        int result = productService.insertProductVO(vo);
        ProductVO productVO = productService.selectSequence();
        System.out.println(vo.getP_Content());
        productVO.setP_Content(vo.getP_Content());
        int updateResult = productService.updateContent(productVO);
        StringBuffer buffer = new StringBuffer();
        int size = 0;
        if(result>0){
                for(int i=0; i<file.length; i++){
                    System.out.println("길이 : "   + file.length);
                    fileOriginName = file[i].getOriginalFilename();
                    System.out.println(fileOriginName);
                    size += file[i].getSize();
                    File f = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\"+fileOriginName); 
                    file[i].transferTo(f); 
                    if(i==0) {
                        fileMultiName += fileOriginName;
                    } else{
                        fileMultiName += (","+fileOriginName);
                    }

                    System.out.println(fileOriginName);
                    ProductImageVO test = new ProductImageVO();
                    test.setI_Fname(fileMultiName);
                    test.setI_Ip("tt");
                    test.setI_Fsize(size);
                    test.setP_Id("60");
                    productService.insertProductIMG(test);

                }
            }

//            resultImg = productService.insertProductIMG(votest);
        else return "redirect:/admin/product.do";

//        System.out.println(resultImg);
//        System.out.println(result);
         return "redirect:/admin/product.do";

    }


}
