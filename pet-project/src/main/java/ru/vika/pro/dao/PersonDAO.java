package ru.vika.pro.dao;

import ru.vika.pro.models.People;
import org.springframework.stereotype.Component;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;


@Component
public class PersonDAO {
    private int PEOPLE_COUNT=0;
    private double[][] debts;
    @Valid
    private ArrayList<People> peopleList= new ArrayList<>();
    public boolean[] debtors;
    public PersonDAO(){
    }
    public PersonDAO(int num){
        PEOPLE_COUNT = num;
        int k=1;
        while (num > 0) {
            num--;
            peopleList.add(new People(k,""));
            k++;
        }
    }
    public ArrayList<People> getPeopleList(){
        return peopleList;
    }

    public void createDebtsTable(int n){
        debts= new double[n][n];
        for (double[] row: debts)
            Arrays.fill(row, 0.0);
        debtors = new boolean[n];
    }
    public void push(int debtor,int creditor, double debt){
        if(creditor!=debtor){
            debts[debtor][creditor]+=debt;
            if(debts[debtor][creditor]>=debts[creditor][debtor]){
                debts[debtor][creditor]-=debts[creditor][debtor];
                debts[creditor][debtor]=0.0;
            }
            else{
                debts[creditor][debtor]-=debts[debtor][creditor];
                debts[debtor][creditor]=0.0;
            }
        }
    }
    public double[][] getDebts() {
        return debts;
    }
}
