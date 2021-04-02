package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "account")
public class Account implements Serializable {

    @Id
    @Column(name = "accountID", nullable = false, length = 100)
    private String accountId;
    private String userName;
    private String pw;
    private byte status;

    @ManyToOne
    @JoinColumn(name = "roleID", nullable = false)
    private Role roleID;
    @OneToMany(mappedBy = "account")
    private Collection<Customer> customers;
    @OneToMany(mappedBy = "account")
    private Collection<Employees> employees;

    public Role getRoleID() {
        return roleID;
    }

    public void setRoleID(Role roleID) {
        this.roleID = roleID;
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
    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
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
        result = 31 * result + (int) status;
        return result;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountId='" + accountId + '\'' +
                ", userName='" + userName + '\'' +
                ", pw='" + pw + '\'' +
                ", status=" + status +
                ", role name = "+ roleID.getName()+
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
