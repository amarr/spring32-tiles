/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring32;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;

/**
 *
 * @author amarron
 */
@Controller
public class AppController {
   
    public AppController() {

        
    } 
    
    @RequestMapping(value= "/", method = RequestMethod.GET)
    public String handleIndexRequest(Model model) {
        model.addAttribute("name", "Austin");
        
        return "app/home";
    }
    
    @RequestMapping(value= "/user", method = RequestMethod.GET)
    public String handleUserRequest(Model model) {
        model.addAttribute("name", "Austin");
        
        return "app/user";
    }
}
