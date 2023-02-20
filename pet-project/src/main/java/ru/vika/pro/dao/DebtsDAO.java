package ru.vika.pro.dao;

import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class DebtsDAO {
    double[][] debts;
    public DebtsDAO(){}
    public DebtsDAO(int n){
        debts= new double[n][n];
        Arrays.fill(debts,0);
    }
    public void push(int debtor,int creditor, double debt){
        if(creditor!=debtor){
            debts[debtor][creditor]+=debt;
        }
    }
}
