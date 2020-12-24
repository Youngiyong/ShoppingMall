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

}
