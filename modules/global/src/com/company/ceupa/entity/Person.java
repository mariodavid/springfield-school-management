package com.company.ceupa.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.InheritanceType;
import javax.persistence.DiscriminatorType;
import javax.persistence.Inheritance;
import javax.persistence.DiscriminatorColumn;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import com.haulmont.cuba.security.entity.User;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@DiscriminatorColumn(name = "DTYPE", discriminatorType = DiscriminatorType.STRING)
@Inheritance(strategy = InheritanceType.JOINED)
@NamePattern("%s|name")
@Table(name = "CEUPA_PERSON")
@Entity(name = "ceupa$Person")
public class Person extends StandardEntity {
    private static final long serialVersionUID = -6173225818262176200L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "clear"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID")
    protected User user;

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}