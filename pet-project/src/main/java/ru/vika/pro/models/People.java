package ru.vika.pro.models;
import java.util.LinkedList;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class People {

    public int id=0;
    @NotEmpty(message = "Name should not be empty")
    @Size(min = 2, max = 30, message = "Name should be between 2 and 30 characters")
    private String name = "";
    public People(){
    }
    
    public People(int id,String name){
        this.name = name;
        this.id = id;
        System.out.println("people was created with name "+name+" and id = "+id);
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String toString(){
        return this.getName();
    }
}
