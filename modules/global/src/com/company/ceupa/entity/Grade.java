package com.company.ceupa.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.List;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@NamePattern("%s|name")
@Table(name = "CEUPA_GRADE")
@Entity(name = "ceupa$Grade")
public class Grade extends StandardEntity {
    private static final long serialVersionUID = 1905052374695041875L;

    @Column(name = "NAME")
    protected String name;

    @JoinTable(name = "CEUPA_TEACHER_GRADE_LINK",
        joinColumns = @JoinColumn(name = "GRADE_ID"),
        inverseJoinColumns = @JoinColumn(name = "TEACHER_ID"))
    @ManyToMany
    protected List<Teacher> teachers;

    public void setTeachers(List<Teacher> teachers) {
        this.teachers = teachers;
    }

    public List<Teacher> getTeachers() {
        return teachers;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}