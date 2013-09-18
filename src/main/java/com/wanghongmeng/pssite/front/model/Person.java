package com.wanghongmeng.pssite.front.model;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class Person {
    private int id;
    private String name;
    private String nick;
    private String pic;
    private String comments;
    private int orderNum;

    public String getComments() {
        return comments == null ? "" : comments.trim();
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name == null ? "" : name.trim();
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNick() {
        return nick == null ? "" : nick.trim();
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public String getPic() {
        return pic == null ? "" : pic.trim();
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof Person)){
            return false;
        }
        Person person = (Person)obj;
        return person.getName().equals(getName()) && person.getNick().equals(getNick());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + getName().hashCode() ;
        result = 37 * result + getNick().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Person=[");
        str.append("name=" + getName()).append(",");
        str.append("nick=" + getNick()).append(",");
        str.append("pic=" + getPic()).append(",");
        str.append("comments=" + getComments()).append(",");
        str.append("orderNum=" + getOrderNum());
        str.append("]");
        return str.toString();
    }
}