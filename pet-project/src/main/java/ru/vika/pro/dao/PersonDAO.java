package ru.vika.pro.dao;
import ru.vika.pro.models.People;
import org.springframework.stereotype.Component;
import javax.validation.Valid;
import java.util.ArrayList;


@Component
public class PersonDAO {
    private int PEOPLE_COUNT=0;
    @Valid
    private ArrayList<People> peopleList= new ArrayList<>();
    public PersonDAO(){
    }
    public PersonDAO(int num){
        PEOPLE_COUNT = num;
        while (num > 0) {
            num--;
            peopleList.add(new People("",1));
        }
    }
    public ArrayList<People> getPeopleList(){
        return peopleList;
    }

}
