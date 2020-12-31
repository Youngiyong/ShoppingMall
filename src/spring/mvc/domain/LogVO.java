package spring.mvc.domain;

public class LogVO {

    private String m_Code;
    private String access_Date;
    private String access_Cate;
    private String access_Content;

    public String getM_Code() {
        return m_Code;
    }

    public void setM_Code(String m_Code) {
        this.m_Code = m_Code;
    }

    public String getAccess_Date() {
        return access_Date;
    }

    public void setAccess_Date(String access_Date) {
        this.access_Date = access_Date;
    }

    public String getAccess_Cate() {
        return access_Cate;
    }

    public void setAccess_Cate(String access_Cate) {
        this.access_Cate = access_Cate;
    }

    public String getAccess_Content() {
        return access_Content;
    }

    public void setAccess_Content(String access_Content) {
        this.access_Content = access_Content;
    }
}
