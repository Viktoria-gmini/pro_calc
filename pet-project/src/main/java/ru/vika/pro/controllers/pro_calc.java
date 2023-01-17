package ru.vika.pro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.vika.pro.dao.PersonDAO;

import javax.naming.Binding;
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
//        System.out.println(persons.getPeopleList());
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
            model.addAttribute("persons", persons);
            return "3_calc";
        }
    }

}
