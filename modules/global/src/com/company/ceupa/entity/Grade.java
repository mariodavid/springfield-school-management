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
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@NamePattern("%s|name")
@Table(name = "CEUPA_GRADE")
@Entity(name = "ceupa$Grade")
public class Grade extends StandardEntity {
    private static final long serialVersionUID = 1905052374695041875L;

    @Column(name = "NAME")
    protected String name;


    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "grade")
    protected List<Student> students;

    @NotNull
    @Column(name = "GRADE_NUMBER", nullable = false)
    protected Integer gradeNumber;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "grade")
    protected List<Course> courses;

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public List<Student> getStudents() {
        return students;
    }


    public void setGradeNumber(Integer gradeNumber) {
        this.gradeNumber = gradeNumber;
    }

    public Integer getGradeNumber() {
        return gradeNumber;
    }


    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public List<Course> getCourses() {
        return courses;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}