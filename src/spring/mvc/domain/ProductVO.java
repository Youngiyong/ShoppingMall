package spring.mvc.domain;

public class ProductVO {

    private String p_Id;
    private String p_Cate;
    private String p_Name;
    private String p_Content;
    private int p_Price;
    private int p_Count;
    private String p_Size;
    private String p_Color;

    public String getP_Id() { return p_Id; }
    public void setP_Id(String p_Id) { this.p_Id = p_Id; }
    public String getP_Cate() { return p_Cate; }
    public void setP_Cate(String p_Cate) { this.p_Cate = p_Cate; }
    public String getP_Name() { return p_Name; }
    public void setP_Name(String p_Name) { this.p_Name = p_Name; }
    public int getP_Price() { return p_Price; }
    public void setP_Price(int p_Price) { this.p_Price = p_Price; }
    public int getP_Count() { return p_Count; }
    public void setP_Count(int p_Count) { this.p_Count = p_Count; }
    public String getP_Size() { return p_Size; }
    public void setP_Size(String p_Size) { this.p_Size = p_Size; }
    public String getP_Content() { return p_Content; }
    public void setP_Content(String p_Content) { this.p_Content = p_Content; }
    public String getP_Color() { return p_Color; }
    public void setP_Color(String p_Color) { this.p_Color = p_Color; }
}
