package spring.mvc.domain;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class ProductImageVO {

    public String p_Id;
    private String i_Ip;
    private String i_Fname;
    private long i_Fsize;

    public String getP_Id() { return p_Id; }
    public void setP_Id(String p_Id) { this.p_Id = p_Id; }
    public String getI_Ip() { return i_Ip; }
    public void setI_Ip(String i_Ip) { this.i_Ip = i_Ip; }
    public String getI_Fname() { return i_Fname; }
    public void setI_Fname(String i_Fname) { this.i_Fname = i_Fname; }
    public long getI_Fsize() { return i_Fsize; }
    public void setI_Fsize(long i_Fsize) { this.i_Fsize = i_Fsize; }

    MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명

    public MultipartFile getFile() {
        return file;
    }
    public void setFile(MultipartFile file) {
        this.file = file;

        // 업로드 파일 접근
//        if(! file.isEmpty()){
//            this.i_Fname = file.getOriginalFilename();
//            System.out.println(i_Fname);
//            this.i_Fsize = file.getSize();
//
//
//            //***********************************************
//            // 해당 경로로 변경
//            File f = new File("C:\\Team7\\ShoppingMall\\WebContent\\resources\\upload\\"+i_Fname);
//
//            try {
//                file.transferTo(f);
//
//            } catch (IllegalStateException e) {
//                e.printStackTrace();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
    }

}
