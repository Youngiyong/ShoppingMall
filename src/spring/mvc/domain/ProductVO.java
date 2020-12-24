package spring.mvc.domain;

public class ProductVO {

    private String p_Id;
    private String p_Cate;
    private String p_Name;
    private String p_Content;
    private String p_Date;
    private int p_Price;

    public String getP_Id() { return p_Id; }
    public void setP_Id(String p_Id) { this.p_Id = p_Id; }
    public String getP_Cate() { return p_Cate; }
    public void setP_Cate(String p_Cate) { this.p_Cate = p_Cate; }
    public String getP_Name() { return p_Name; }
    public void setP_Name(String p_Name) { this.p_Name = p_Name; }
    public int getP_Price() { return p_Price; }
    public void setP_Price(int p_Price) { this.p_Price = p_Price; }
    public String getP_Content() { return p_Content; }
    public void setP_Content(String p_Content) { this.p_Content = p_Content; }
    public String getP_Date() { return p_Date; }
    public void setP_Date(String p_Date) { this.p_Date = p_Date; }

}
