package com.example.Profile.app.controllers;

import com.example.Profile.app.entities.PortfolioRepository;
import com.example.Profile.app.entities.Portfolio;
import com.example.Profile.app.services.PortfolioService;
import org.hibernate.validator.internal.util.StringHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@Controller
public class ProfileController {

    @Autowired
    PortfolioService portfolioService;

    @GetMapping({"/{id}", "/hello/{id}"})
    public String hello(Model model, @PathVariable(value="id", required=true)Integer id) {
        Portfolio portfolio = portfolioService.getPortfolio(id);
        model.addAttribute("portfolio", portfolio);
        return "hello";
    }

    @GetMapping(path="/zemoga_portfolio_api/user_info/{id}")
    public @ResponseBody Portfolio getPortfolio(@PathVariable(value="id", required=true)Integer id) {
        return portfolioService.getPortfolio(id);
    }

    @PostMapping(path="/zemoga_portfolio_api/modify_user_info/{id}")
    public @ResponseBody Portfolio modifyPortfolio (@PathVariable(value="id", required=true)Integer id, @RequestBody Portfolio portfolio) {
        return portfolioService.updatePortfolio(id,portfolio);
    }

    @GetMapping(path="/zemoga_portfolio_api/all")
    public @ResponseBody Collection<Portfolio> getAllPortfolios() {
        return portfolioService.getPortfolios();
    }


}
