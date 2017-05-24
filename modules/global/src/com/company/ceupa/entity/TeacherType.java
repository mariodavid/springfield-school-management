package com.company.ceupa.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum TeacherType implements EnumClass<String> {

    MATH("MATH"),
    ENGLISH("ENGLISH"),
    BIOLOGY("BIOLOGY"),
    SPORT("SPORT"),
    MUSIC("MUSIC");

    private String id;

    TeacherType(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static TeacherType fromId(String id) {
        for (TeacherType at : TeacherType.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}