package com.example.Profile.app.services;

import com.example.Profile.app.entities.Portfolio;

import java.util.Collection;

public interface PortfolioService {
    public abstract Portfolio updatePortfolio(Integer id, Portfolio portfolio);
    public abstract Portfolio getPortfolio(Integer id);
    public abstract Collection<Portfolio> getPortfolios();
}
