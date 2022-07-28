package com.xit.store.entity;

/**
 * ClassName:  flow
 * Package:  com.xit.store.entity
 * Description:
 *
 * @Date: 2021/12/27   16:24
 * @Author: 86152
 */
public class flow {
    private  String tel;
    private  String area;
    private  String flow;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getFlow() {
        return flow;
    }

    public void setFlow(String flow) {
        this.flow = flow;
    }

    public flow() {
    }
    public flow(String tel, String area, String flow) {
        this.tel = tel;
        this.area = area;
        this.flow = flow;
    }
    @Override
    public String toString() {
        return "flow{" +
                "tel='" + tel + '\'' +
                ", area='" + area + '\'' +
                ", flow='" + flow + '\'' +
                '}';
    }
}
