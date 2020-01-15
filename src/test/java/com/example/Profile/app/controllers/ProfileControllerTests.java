package com.example.Profile.app.controllers;

import com.example.Profile.app.AbstractTest;
import com.example.Profile.app.entities.Portfolio;
import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.Assert.*;

public class ProfileControllerTests extends AbstractTest {
    @Override
    @Before
    public void setUp() {
        super.setUp();
    }
    @Test
    public void helloTest() throws Exception {
        String uri = "/hello/1";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
    }
    @Test
    public void getPortfolioTestWithExistingId() throws Exception {
        String uri = "/zemoga_portfolio_api/user_info/1";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        Portfolio portfolio = super.mapFromJson(content, Portfolio.class);
        assertNotNull(portfolio);
    }
    @Test
    public void getPortfolioTestWithNotExistingId() throws Exception {
        String uri = "/zemoga_portfolio_api/user_info/100";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(404, status);
    }
    @Test
    public void getPortfoliosTest() throws Exception {
        String uri = "/zemoga_portfolio_api/all";
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        Portfolio[] portfolioList = super.mapFromJson(content, Portfolio[].class);
        assertTrue(portfolioList.length > 0);
    }
    @Test
    public void modifyPortfolioTest() throws Exception {
        String uri = "/zemoga_portfolio_api/modify_user_info/1";
        Portfolio portfolio = new Portfolio();
        portfolio.setTitle("Lemon Javita");
        String inputJson = super.mapToJson(portfolio);
        MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
                .contentType(MediaType.APPLICATION_JSON_VALUE)
                .content(inputJson)).andReturn();

        int status = mvcResult.getResponse().getStatus();
        assertEquals(200, status);
        String content = mvcResult.getResponse().getContentAsString();
        Portfolio portfolioResponse = super.mapFromJson(content, Portfolio.class);
        assertNotNull(portfolioResponse);
    }

}
