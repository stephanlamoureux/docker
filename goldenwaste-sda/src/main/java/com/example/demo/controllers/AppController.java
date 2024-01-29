package com.example.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.example.demo.services.UserService;

@Controller
public class AppController {
	   @Autowired
	    private UserService userServ;
	   
	   @GetMapping("/home")
	    public String home(Model model) {
	  
	        return "home.jsp";
	    }
	   @GetMapping("/userHome")
	    public String index(Model model) {
	  
	        return "userHome.jsp";
	    }
	   
	   @GetMapping("/map")
	    public String map(Model model) {
	  
	        return "map.jsp";
	    }
	   @GetMapping("/product")
	    public String product(Model model) {
	  
	        return "prodect.jsp";
	    }



}
