package com.baizhi.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Emp)实体类
 *
 * @author gf
 * @since 2021-07-05 18:41:42
 */

public class Emp implements Serializable {
    private static final long serialVersionUID = 887587242949864984L;

    private String id;

    private String name;

    private Object salary;

    private Integer age;

    private Date bir;

    private String sex;

    public Emp() {

    }

    public Emp(String id, String name, Object salary, Integer age, Date bir, String sex) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        this.age = age;
        this.bir = bir;
        this.sex = sex;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Object getSalary() {
        return salary;
    }

    public void setSalary(Object salary) {
        this.salary = salary;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getBir() {
        return bir;
    }

    public void setBir(Date bir) {
        this.bir = bir;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", salary=" + salary +
                ", age=" + age +
                ", bir=" + bir +
                ", sex='" + sex + '\'' +
                '}';
    }
}
