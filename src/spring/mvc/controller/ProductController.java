package spring.mvc.controller;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
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
import java.util.*;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;


    @RequestMapping("/admin/product_modify.do")
    public String productModify(ProductVO vo, Model m){
        System.out.println(vo.getP_Id());

        ProductImageVO imageVO = productService.selectProductImageIDInfo(vo);

        m.addAttribute( "productVO", productService.selectProductIDInfo(vo));
        m.addAttribute( "productImageVO", imageVO);
        m.addAttribute( "productStockVO", productService.selectProductStockIDInfo(vo));

        String str = imageVO.getI_Fname();

        // "," 구분자 문자열 split로 잘라서 list 배열에 담음
        String[] list ;
        list = str.split(",");

        m.addAttribute("imageList", list);
        System.out.println(list[0]);
        m.addAttribute("imgPath", "/ShoppingMall/resources/upload/" + list[0]);
        return "/admin/product_modify";
    }


    @RequestMapping("/admin/deleteId.do")
    @ResponseBody
    public String deleteId(@RequestBody ProductVO[] vo){
        List<ProductVO> list = new ArrayList<>();
        List<ProductImageVO> imgList = new ArrayList<>();
        List<ProductImageVO> imgPath = new ArrayList<>();

        for(int i=0; i<vo.length; i++){
            ProductImageVO ivo = new ProductImageVO();
            ivo.setP_Id(vo[i].getP_Id());
            list.add(vo[i]);
            imgList.add(ivo);

            System.out.println(imgList.get(i).getP_Id());
        }

        imgPath = productService.getProductImg(imgList);


         ArrayList<String> aList = new ArrayList<>();

         for(int i=0; i<imgPath.size(); i++){
             String str = imgPath.get(i).getI_Fname();
             String[] vlist ;
             vlist = str.split(",");

             for(int j=0; j<vlist.length; j++){
                 aList.add(vlist[j]);
                 System.out.println(vlist[j]);
             }
         }

         for(int i=0; i<aList.size(); i++){
             System.out.println(aList.size());
             File file = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\"+aList.get(i));
             if(file.exists()){
                 if(file.delete()){
                     System.out.println(aList.get(i) +": 파일 삭제 성공");
                 }
                 else
                     System.out.println("파일 삭제 실패");
             } else
                 System.out.println("파일이 존재하지 않습니다.");
         }


        productService.deleteProductStockList(list);
        productService.deleteProductImageList(list);
        int result = productService.deleteProductList(list);
        if(result>0){
            return "성공";
        }
        else
            return "실패";

    }




    @RequestMapping("/admin/products.do")
    public String getProductList(ProductVO vo, Model m){
        System.out.println("getProductList 함수 호출");

        m.addAttribute("productList", productService.getProductList(vo));

        return "/admin/products";
    }

    @RequestMapping("/admin/productModify.do")
    public String updateProduct(ProductVO vo, ProductImageVO ivo, ProductStockVO svo,  @RequestParam("file") MultipartFile[] file, Model m) throws IOException {
        System.out.println("updateProduct 함수 호출");

        ProductImageVO imgVO= new ProductImageVO();
        ProductStockVO stockVO = new ProductStockVO();

        ProductImageVO imageSample = productService.selectProductImageIDInfo(vo);

        String str = imageSample.getI_Fname();
        String[] list;

        list = str.split(",");

        for(int i=0; i<list.length; i++){
            System.out.println(list.length);
            File f = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\"+list[i]);
            if(f.exists()){
                if(f.delete()){
                    System.out.println(list[i] +": 파일 삭제 성공");
                }
                else
                    System.out.println("파일 삭제 실패");
            } else
                System.out.println("파일이 존재하지 않습니다.");
        }


        String fileOriginName = "";
        String fileMultiName = "";

        int size = 0;

        if(file.length>0) {
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
            System.out.println(fileMultiName);
            System.out.println(imgVO.getI_Fsize());


            imgVO.setI_Fname(fileMultiName);
            imgVO.setP_Id(vo.getP_Id());
            imgVO.setI_Ip(ivo.getI_Ip());
            imgVO.setI_Fsize(size);
            productService.updateProductImageVO(imgVO);

            stockVO.setP_Id(vo.getP_Id());
            stockVO.setP_Size(svo.getP_Size());
            stockVO.setP_Color(svo.getP_Color());
            stockVO.setP_Count(svo.getP_Count());
            productService.updateProductStockVO(stockVO);
            productService.updateProductVO(vo);
        }
        else{
            imgVO.setP_Id(vo.getP_Id());
            imgVO.setI_Ip(ivo.getI_Ip());
            imgVO.setI_Fsize(size);
            imgVO.setI_Fname(imageSample.getI_Fname());
            productService.updateProductImageVO(imgVO);

            stockVO.setP_Id(vo.getP_Id());
            stockVO.setP_Size(svo.getP_Size());
            stockVO.setP_Color(svo.getP_Color());
            stockVO.setP_Count(svo.getP_Count());
            productService.updateProductStockVO(stockVO);
            productService.updateProductVO(vo);
        }
        System.out.println(imgVO.getI_Fname());
        m.addAttribute("imgPath", "/ShoppingMall/resources/upload/" + imgVO.getI_Fname());


        return "/admin/product_modify";
    }

    //상품 등록 이미지 파일 첨부
    @RequestMapping("/admin/upload.do")
    public String upload(ProductVO vo, ProductImageVO ivo, Model m, ProductStockVO svo, @RequestParam("file") MultipartFile[] file) throws IOException {
        System.out.println("upload 함수 호출");

        ProductImageVO imgVO = new ProductImageVO();
        ProductStockVO stockVO = new ProductStockVO();
        String fileOriginName = "";
        String fileMultiName = "";
        int result = productService.insertProductVO(vo);
        ProductVO productVO = productService.selectSequence();
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
