package com.sishuok.es.teacher.entity;

import com.sishuok.es.common.entity.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 12:57
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "assist_teacher")
public class Teacher extends BaseEntity<Long> {
    @NotNull(message = "{not.null}")
    @Column(name = "workno")
    private String workno;

    @NotNull(message = "{not.null}")
    @Column(name = "name")
    private String name;

    public String getWorkno() {
        return workno;
    }

    public void setWorkno(String workno) {
        this.workno = workno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "workno='" + workno + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
