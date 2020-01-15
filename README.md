# Profile-app
Java Portfolio Web App
## 
## ✨ Software Prerequisites

Java version 1.8

Apache Maven 3.6.3 (for developing)

Apache Tomcat 8.5 Deployment

Spring-boot 2.2.2

Steps to build app

## 🚀 Build app

Make sure you have [maven](https://maven.apache.org/download.cgi) installed (`mvn` current version `3.6.3`)

Just run the following command at the root of your project: 

Use ```mvn clean install``` or ```mvn clean package``` generating all target files and directories as WAR file

Use ```mvn spring-boot:run ``` for deploy app in Tomcat embedded with Spring Framework. 

The application port will be 9090 in this way.
If you are using this port already go to application.properties file in src/main/resources/ directory and change server.port property 
to anyone you are not using 

## 🚀 Deployment

With WAR file generated go to Tomcat Manager App (At localhost:8080 by default), go to WAR file to deploy section, upload WAR app file
and click on deploy. After few minutes you can select app path or go in any web browser

## 🤝 Use

If you go to localhost:8080/'appfile'/ (deployment) or localhost:9090 (mvn spring-boot:run) you will get a Whitelabel Error Page. You have to use these specific paths
with root path for use the app:

```/{id}"``` or ```"/hello/{id}``` get JSP web page with Portfolio content

```/zemoga_portfolio_api/user_info/{id}``` get all Portfolio information based on Id

```/zemoga_portfolio_api/modify_user_info/{id}``` allows to modify description, image_url, title information of a Portfolio based on Id.
Use body request for these optional parameters

```/zemoga_portfolio_api/all``` get all Portfolios information

## 👋 Time

Developing backend functionality takes 4 - 5 hours including JSP manage information, consumig database, UnitTesting. To develop Frontend
prototype, i used a free colorlib template so it takes 1 extra hour to set up all CSS and Js files as applicationContext.
