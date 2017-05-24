package com.company.ceupa.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@PrimaryKeyJoinColumn(name = "ID", referencedColumnName = "ID")
@Table(name = "CEUPA_TEACHER")
@Entity(name = "ceupa$Teacher")
public class Teacher extends Person {
    private static final long serialVersionUID = 677078199595464775L;

    @NotNull
    @Column(name = "TYPE_", nullable = false)
    protected String type;


    @JoinTable(name = "CEUPA_TEACHER_GRADE_LINK",
        joinColumns = @JoinColumn(name = "TEACHER_ID"),
        inverseJoinColumns = @JoinColumn(name = "GRADE_ID"))
    @ManyToMany
    protected List<Grade> grades;

    public void setGrades(List<Grade> grades) {
        this.grades = grades;
    }

    public List<Grade> getGrades() {
        return grades;
    }


    public void setType(TeacherType type) {
        this.type = type == null ? null : type.getId();
    }

    public TeacherType getType() {
        return type == null ? null : TeacherType.fromId(type);
    }


}