package com.sishuok.es.student.entity;

import com.sishuok.es.common.entity.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/16
 * Time: 11:42
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "assist_student")
public class Student extends BaseEntity<Long> {

    @NotNull(message = "{not.null}")
    @Column(name = "sno")
    private String sno;

    @NotNull(message = "{not.null}")
    @Column(name = "name")
    private String name;

    @NotNull(message = "{not.null}")
    @Column(name = "classname")
    private String classname;

    @NotNull(message = "{not.null}")
    @Column(name = "ie")
    private String ie;//智育

    @NotNull(message = "{not.null}")
    @Column(name = "me")
    private String me;//德育

    @NotNull(message = "{not.null}")
    @Column(name = "obs")
    private String obs;//综合

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getIe() {
        return ie;
    }

    public void setIe(String ie) {
        this.ie = ie;
    }

    public String getMe() {
        return me;
    }

    public void setMe(String me) {
        this.me = me;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sno='" + sno + '\'' +
                ", name='" + name + '\'' +
                ", classname='" + classname + '\'' +
                ", ie=" + ie +
                ", me=" + me +
                ", obs=" + obs +
                '}';
    }
}
