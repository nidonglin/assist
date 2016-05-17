package com.sishuok.es.ship.entity;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 15:00
 * To change this template use File | Settings | File Templates.
 */

import com.sishuok.es.common.entity.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

/**
 * 奖学金、助学金
 */
@Entity
@Table(name = "assist_ship")
public class Ship extends BaseEntity<Long> {

    @NotNull(message = "{not.null}")
    @Column(name = "sno")
    private String sno;

    @Transient
    private String name;
    @Transient
    private String classname;

    @NotNull(message = "{not.null}")
    @Column(name = "type")
    private Integer type;

    @NotNull(message = "{not.null}")
    @Column(name = "level")
    private Integer level;

    @NotNull(message = "{not.null}")
    @Column(name = "reg_date")
    private String date;

    @NotNull(message = "{not.null}")
    @Column(name = "remark")
    private String remark;

    @NotNull(message = "{not.null}")
    @Column(name = "audit_state")
    private Integer state;

    @NotNull(message = "{not.null}")
    @Column(name = "grant_state")
    private Integer grant;

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public Integer getGrant() {
        return grant;
    }

    public void setGrant(Integer grant) {
        this.grant = grant;
    }

    @Override
    public String toString() {
        return "Ship{" +
                "sno='" + sno + '\'' +
                ", name='" + name + '\'' +
                ", classname='" + classname + '\'' +
                ", type=" + type +
                ", level=" + level +
                ", date='" + date + '\'' +
                ", remark='" + remark + '\'' +
                ", state=" + state +
                ", grant=" + grant +
                '}';
    }
}
