package spring.mvc.domain;

public class OrderListVO {
    private String o_Id;
    private String p_Id;
    private String m_Code;
    private String p_Color;
    private String p_Size;
    private String p_Root;
    private String o_Date;
    private String p_Name;
    private int p_Price;
    private int p_Count;

    
	public String getP_Name() {
		return p_Name;
	}
	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}
	public String getO_Id() { return o_Id; }
    public void setO_Id(String o_Id) { this.o_Id = o_Id; }
    public String getP_Id() { return p_Id; }
    public void setP_Id(String p_Id) { this.p_Id = p_Id; }
    public String getM_Code() { return m_Code; }
    public void setM_Code(String m_Code) { this.m_Code = m_Code; }
    public String getP_Color() { return p_Color; }
    public void setP_Color(String p_Color) { this.p_Color = p_Color; }
    public String getP_Size() { return p_Size; }
    public void setP_Size(String p_Size) { this.p_Size = p_Size; }
    public String getP_Root() { return p_Root; }
    public void setP_Root(String p_Root) { this.p_Root = p_Root; }
    public String getO_Date() { return o_Date; }
    public void setO_Date(String o_Date) { this.o_Date = o_Date; }
    public int getP_Price() { return p_Price; }
    public void setP_Price(int p_Price) { this.p_Price = p_Price; }
    public int getP_Count() { return p_Count; }
    public void setP_Count(int p_Count) { this.p_Count = p_Count; }
}
