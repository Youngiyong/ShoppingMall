package spring.mvc.controller;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
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

    @RequestMapping(value="/admin/deleteId.do")
    @ResponseBody
    public Object deleteId(@RequestParam String jsonData){
        System.out.println(jsonData);
        Map<String, Object> result = new HashMap<String, Object>();
        Map<String, Object> paramMap = new HashMap<String, Object>();

        //직렬화 시켜 가져온 오브젝트 배열을 JSONArray 형식으로 바꿔준다.
        JSONArray array = JSONArray.fromObject(jsonData);
        List<Map<String, Object>> resendList = new ArrayList<Map<String, Object>>();
        System.out.println(array.size());
        for(int i=0; i<array.size(); i++){
            //JSONArray 형태의 값을 가져와 JSONObject 로 풀어준다.
            JSONObject obj = (JSONObject)array.get(i);
            Map<String, Object> resendMap = new HashMap<String, Object>();
            resendMap.put("p_Id", obj.get("p_Id"));
            resendList.add(resendMap);
            System.out.println(resendMap.get(i));
        }
        paramMap.put("resendList", resendList);

//        int cnt = callCenterService.callCenterResend(paramMap);

        result.put("result", "success");
//        result.put("cnt", cnt);

        return result;

    }




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
