package com.wanghongmeng.pssite.front.model;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class Diary {
    private int id;
    private String personId;
    private String content;
    private String pic;
    private String entryDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPersonId() {
        return personId == null ? "" : personId.trim();
    }

    public void setPersonId(String personId) {
        this.personId = personId;
    }

    public String getContent() {
        return content == null ? "" : content.trim();
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPic() {
        return pic == null ? "" : pic.trim();
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getEntryDate() {
        return entryDate == null ? "" : entryDate.trim().substring(0,entryDate.trim().length() - 2);
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof Diary)){
            return false;
        }
        Diary diary = (Diary)obj;
        return diary.getPersonId().equals(getPersonId()) && diary.getContent().equals(getContent()) && diary.getPic().equals(getPic());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + getPersonId().hashCode() ;
        result = 37 * result + getContent().hashCode();
        result = 37 * result + getPic().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Diary=[");
        str.append("personId=" + getPersonId()).append(",");
        str.append("content=" + getContent()).append(",");
        str.append("pic=" + getPic()).append(",");
        str.append("entryDate=" + getEntryDate());
        str.append("]");
        return str.toString();
    }
}
