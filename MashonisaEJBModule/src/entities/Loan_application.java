/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Student
 */
@Entity
@Table(name="loan_application")
public class Loan_application implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String bankAcc;
    private Long accNo;
    private Double loanAmnt;
    private String incomeType;
    private Double incomeAmt;
    private String loanTerm;
    
    private String status;

    public Loan_application() {
    }

    public Loan_application(Long id, String bankAcc, Long accNo, Double loanAmnt, String incomeType, Double incomeAmt, String loanTerm, String status) {
        this.id = id;
        this.bankAcc = bankAcc;
        this.accNo = accNo;
        this.loanAmnt = loanAmnt;
        this.incomeType = incomeType;
        this.incomeAmt = incomeAmt;
        this.loanTerm = loanTerm;
        this.status = status;
    }

    public String getBankAcc() {
        return bankAcc;
    }

    public void setBankAcc(String bankAcc) {
        this.bankAcc = bankAcc;
    }

    public Long getAccNo() {
        return accNo;
    }

    public void setAccNo(Long accNo) {
        this.accNo = accNo;
    }

    public Double getLoanAmnt() {
        return loanAmnt;
    }

    public void setLoanAmnt(Double loanAmnt) {
        this.loanAmnt = loanAmnt;
    }

    public String getIncomeType() {
        return incomeType;
    }

    public void setIncomeType(String incomeType) {
        this.incomeType = incomeType;
    }

    public Double getIncomeAmt() {
        return incomeAmt;
    }

    public void setIncomeAmt(Double incomeAmt) {
        this.incomeAmt = incomeAmt;
    }

    public String getLoanTerm() {
        return loanTerm;
    }

    public void setLoanTerm(String loanTerm) {
        this.loanTerm = loanTerm;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Loan_application)) {
            return false;
        }
        Loan_application other = (Loan_application) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Loan_application[ id=" + id + " ]";
    }
    
}
