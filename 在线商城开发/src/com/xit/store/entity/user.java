package com.xit.store.entity;

/**
 * ClassName:  user
 * Package:  com.xit.store.entity
 * Description:
 *
 * @Date: 2021/11/22   16:40
 * @Author: 86152
 */
public class user {
    private   Integer id;
    private   String username;
    private   String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public user() {
    }

    public user(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }
}
