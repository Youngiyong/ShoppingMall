package spring.mvc.domain;

public class OrderInfoVO {
    private String o_Id;
    private String pa_Code;
    private String m_Code;
    private String od_Id;
    private String o_Date;
    private String o_Status;

    public String getO_Id() { return o_Id; }
    public void setO_Id(String o_Id) { this.o_Id = o_Id; }
    public String getPa_Code() { return pa_Code; }
    public void setPa_Code(String pa_Code) { this.pa_Code = pa_Code; }
    public String getM_Code() { return m_Code; }
    public void setM_Code(String m_Code) { this.m_Code = m_Code; }
    public String getOd_Id() { return od_Id; }
    public void setOd_Id(String od_Id) { this.od_Id = od_Id; }
    public String getO_Date() { return o_Date; }
    public void setO_Date(String o_Date) { this.o_Date = o_Date; }
    public String getO_Status() { return o_Status; }
    public void setO_Status(String o_Status) { this.o_Status = o_Status; }
}
