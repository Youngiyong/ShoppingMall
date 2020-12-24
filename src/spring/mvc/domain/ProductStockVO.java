package spring.mvc.domain;

public class ProductStockVO {
    public String p_Id;
    public String p_Size;
    public String p_Color;
    public int p_Count;

    public String getP_Id() { return p_Id; }
    public void setP_Id(String p_Id) { this.p_Id = p_Id; }
    public String getP_Size() { return p_Size; }
    public void setP_Size(String p_Size) { this.p_Size = p_Size; }
    public String getP_Color() { return p_Color; }
    public void setP_Color(String p_Color) { this.p_Color = p_Color; }
    public int getP_Count() { return p_Count; }
    public void setP_Count(int p_Count) { this.p_Count = p_Count; }
}
