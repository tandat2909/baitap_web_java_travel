package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "province")
public class Province  implements Serializable {
    @Id
    @Column(name = "provinceID", nullable = false, length = 100)
    private String provinceId;
    private String provinceName;

    @OneToMany(mappedBy = "province")
    private Collection<Landmarks> landmarks;



    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
    }

    @Basic
    @Column(name = "provinceName", nullable = false, length = 100)
    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Province province = (Province) o;
        return Objects.equals(provinceId, province.provinceId) && Objects.equals(provinceName, province.provinceName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(provinceId, provinceName);
    }


    public Collection<Landmarks> getLandmarks() {
        return landmarks;
    }

    public void setLandmarks(Collection<Landmarks> landmarks) {
        this.landmarks = landmarks;
    }
}
