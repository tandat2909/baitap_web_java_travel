package com.travels.springmvc.pojo;


import com.travels.springmvc.Annotation.GeneratedValueUUID;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.ValueGenerationType;
import org.hibernate.tuple.ValueGenerator;
import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "account")
public class Account implements Serializable {

    @Id
    @Column(name = "accountID", nullable = false, length = 100)
    @GeneratedValueUUID
    private String accountId;
//    @NotNull
//    @Pattern(regexp = "[a-zA-Z0-9]{5,}" , message = "{account.username.error}")
    private String userName;
//    @NotNull
//    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$", message = "{account.password.error}")
    private String pw;

    @Transient
    private String confirmPw;
    private boolean status;
    @Column(name = "roleID")
    private String roleID;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "roleID", nullable = false,insertable = false,updatable = false)
    private Role role;
    @OneToMany(mappedBy = "account")
    private Collection<Customer> customers;
    @OneToMany(mappedBy = "account")
    private Collection<Employees> employees;

    public boolean isStatus() {
        return status;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    @Basic
    @Column(name = "userName", nullable = false, length = 50)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "pw", nullable = false, length = 300)
    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getConfirmPw() {
        return confirmPw;
    }

    public void setConfirmPw(String confirmPw) {
        this.confirmPw = confirmPw;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (status != account.status) return false;
        if (!Objects.equals(accountId, account.accountId)) return false;
        if (!Objects.equals(userName, account.userName)) return false;
        if (!Objects.equals(pw, account.pw)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = accountId != null ? accountId.hashCode() : 0;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (pw != null ? pw.hashCode() : 0);
        result = 31 * result + (status ?1:0);
        return result;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountId='" + accountId + '\'' +
                ", userName='" + userName + '\'' +
                ", pw='" + pw + '\'' +
                ", status=" + status +
                ", role ID = "+roleID+
                '}';
    }




    public Collection<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(Collection<Customer> customers) {
        this.customers = customers;
    }


    public Collection<Employees> getEmployees() {
        return employees;
    }

    public void setEmployees(Collection<Employees> employees) {
        this.employees = employees;
    }
}
