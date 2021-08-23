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

    private Date ;

    private String sex;


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

    public Date get() {
        return ;
    }

    public void set(Date ) {
        this. = ;
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
                ", =" +  +
                ", sex='" + sex + '\'' +
                '}';
    }
}
