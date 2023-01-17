package ru.vika.pro.models;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class People {
    @NotEmpty(message = "Name should not be empty")
    @Size(min = 2, max = 30, message = "Name should be between 2 and 30 characters")
    private String name = "";
    private int number_of_people = 1;
    public People(){}
    public People(String name, int number_of_people){
        this.name = name;
        this.number_of_people = number_of_people;
        System.out.println("people was created with name "+name);
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber_of_people() {
        return number_of_people;
    }

    public void setNumber_of_people(int number_of_people) {
        this.number_of_people = number_of_people;
    }
    public String toString(){
        return this.getName()+" "+Integer.toString(this.getNumber_of_people());
    }

//    ниже идёт кусок кода, который позже будет вставлен в DAO, он нужен, чтобы
//    разделять группы людей на единичных персонажей

//    public static LinkedList<People> multiply(People group) throws Exception {
//        if (group == null) {
//            throw new Exception("В группе нет людей");
//        }
//        int number = group.getNumber_of_people();
//        LinkedList<People> result=  new LinkedList<People>() ;
//        for (int i = 1; i < number; i++){
//            result.add(new People(group.getName() + Integer.toString(i),1));
//        }
//        return result;
//    }
//    public static LinkedList<People> multiplyInArray(LinkedList<People> groups) throws Exception {
//        if (groups == null) {
//            throw new Exception("Нет ни одной группы");
//        }
//        for (int i = 0; i < groups.size(); i++) {
//            People people = groups.get(i);
//            if (people.getNumber_of_people() > 1) {
//                LinkedList<People> news = People.multiply(people);
//                groups.remove(people);
//                groups.addAll(i, news);
//            }
//        }
//        return groups;
//    }
}
