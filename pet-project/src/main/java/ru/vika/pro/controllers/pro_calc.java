package ru.vika.pro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.vika.pro.dao.PersonDAO;

import javax.validation.Valid;

@SessionAttributes("persons")
@Controller
public class pro_calc {
//    здесь пользователь вводит количество групп людей от 2 до 10
    @GetMapping("/")
    public String sayNumber(Model model) {
        int num = 2;
        model.addAttribute("number", num);
        return "1_num_of_ppl";
    }
//    здесь перечисляет группы людей

    @RequestMapping(value = "/people/create", method = RequestMethod.GET)
    public String sayNames(@RequestParam("num") int number,
                           Model model){
        PersonDAO persons = new PersonDAO(number);
        model.addAttribute("persons",persons);
        return "2_define_ppl";
    }
    @PostMapping("/people/save")
    public String saveGroups(@ModelAttribute("persons") @Valid PersonDAO persons,
                             BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()) {
            System.out.println("the spisok is: "+persons.getPeopleList());
            return sayNames(persons.getPeopleList().size(), model);
        }
        else{
            persons.createDebtsTable(persons.getPeopleList().size());
            model.addAttribute("persons", persons);
//            model.addAttribute("data",new RequestBody(persons.getPeopleList().size()));
            return "3_calc";
        }
    }


    @PostMapping("/people/save/newResults")
    public String saveNewResults(
                                @RequestParam(name = "selected_creditor") int creditor,
                                @RequestParam(name = "cost") double cost,
                                 @RequestParam(name = "parts", required=false) int [] parts,
                                 @ModelAttribute("persons") PersonDAO persons,
                                 Model model){
        try{
            System.out.println("creditor is " + persons.getPeopleList().get(creditor-1));
            for(int i:parts) {
                double value = cost/parts.length;
                double scale = Math.pow(10, 2);
                double debt = Math.ceil(value * scale) / scale;
                persons.push(i-1,creditor-1,debt);
                if(creditor!=i){
                System.out.println("Debtor "+persons.getPeopleList().get(i-1)+
                        " owes to creditor " + persons.getPeopleList().get(creditor-1)+" "+debt+" rubles");}
            }
            for(int j=0;j<persons.getPeopleList().size();j++){
                System.out.println("Now debtor "+persons.getPeopleList().get(j)+
                        " owes to creditor " + persons.getPeopleList().get(creditor-1)+" "+
                        persons.getDebts()[j][creditor-1]+" rubles");
            }
        }
        catch (Exception e){
            System.out.println("karramba");
        }
        return "3_calc";
    }

}
