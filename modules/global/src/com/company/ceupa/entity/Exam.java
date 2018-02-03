package com.company.ceupa.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s|topic")
@Table(name = "CEUPA_EXAM")
@Entity(name = "ceupa$Exam")
public class Exam extends StandardEntity {
    private static final long serialVersionUID = -5034880176346477526L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "COURSE_ID")
    protected Course course;

    @NotNull
    @Column(name = "TOPIC", nullable = false)
    protected String topic;

    @Temporal(TemporalType.DATE)
    @NotNull
    @Column(name = "EXAMINATION_DATE", nullable = false)
    protected Date examinationDate;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "exam")
    protected List<ExamResult> results;

    public void setResults(List<ExamResult> results) {
        this.results = results;
    }

    public List<ExamResult> getResults() {
        return results;
    }


    public void setCourse(Course course) {
        this.course = course;
    }

    public Course getCourse() {
        return course;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getTopic() {
        return topic;
    }

    public void setExaminationDate(Date examinationDate) {
        this.examinationDate = examinationDate;
    }

    public Date getExaminationDate() {
        return examinationDate;
    }


}