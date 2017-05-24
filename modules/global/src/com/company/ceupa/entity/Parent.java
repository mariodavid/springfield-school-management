package com.company.ceupa.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

@PrimaryKeyJoinColumn(name = "ID", referencedColumnName = "ID")
@Table(name = "CEUPA_PARENT")
@Entity(name = "ceupa$Parent")
public class Parent extends Person {
    private static final long serialVersionUID = 2857265431885955468L;

    @NotNull
    @Column(name = "PHONE", nullable = false)
    protected String phone;

    @NotNull
    @Column(name = "EMAIL", nullable = false)
    protected String email;

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }


}