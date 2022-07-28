package com.xit.store.entity;

/**
 * ClassName:  charge
 * Package:  com.xit.store.entity
 * Description:
 *
 * @Date: 2021/12/27   13:55
 * @Author: 86152
 */
public class charge {
    private  String tel;
    private  String operator;
    private  String charge;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getCharge() {
        return charge;
    }

    public void setCharge(String charge) {
        this.charge = charge;
    }

    public charge() {
    }

    public charge(String tel, String operator, String charge) {
        this.tel = tel;
        this.operator = operator;
        this.charge = charge;
    }

    @Override
    public String toString() {
        return "charge{" +
                "tel=" + tel +
                ", operator='" + operator + '\'' +
                ", charge='" + charge + '\'' +
                '}';
    }
}
