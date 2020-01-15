package com.example.Profile.app.services;

import com.example.Profile.app.controllers.EntityNotFoundException;
import com.example.Profile.app.entities.Portfolio;
import com.example.Profile.app.entities.PortfolioRepository;
import org.hibernate.validator.internal.util.StringHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class PortfolioServiceImpl implements PortfolioService {
    @Autowired
    private PortfolioRepository portfolioRepository;

    @Override
    public Portfolio updatePortfolio(Integer id, Portfolio portfolio) {
        Portfolio dbPortfolio = portfolioRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("No portfolio found with id " + id));
        if(!StringHelper.isNullOrEmptyString(portfolio.getImage_url()))
            dbPortfolio.setImage_url(portfolio.getImage_url());
        if(!StringHelper.isNullOrEmptyString(portfolio.getDescription()))
            dbPortfolio.setDescription(portfolio.getDescription());
        if(!StringHelper.isNullOrEmptyString(portfolio.getTitle()))
            dbPortfolio.setTitle(portfolio.getTitle());
        portfolioRepository.save(dbPortfolio);
        return dbPortfolio;
    }

    @Override
    public Portfolio getPortfolio(Integer id) {
        Portfolio portfolio = portfolioRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("No portfolio found with id " + id));
        return portfolio;
    }

    @Override
    public Collection<Portfolio> getPortfolios() {
        return (Collection<Portfolio>) portfolioRepository.findAll();
    }
}
