package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "sysconfig")
public class Sysconfig implements Serializable {
    @Id
    @Column(name = "key", nullable = false, length = 50)
    private String key;
    private String value;




    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Basic
    @Column(name = "value", nullable = false, length = 200)
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Sysconfig sysconfig = (Sysconfig) o;
        return Objects.equals(key, sysconfig.key) && Objects.equals(value, sysconfig.value);
    }

    @Override
    public int hashCode() {
        return Objects.hash(key, value);
    }

    @Override
    public String toString() {
        return "Sysconfig{" +
                "key='" + key + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
