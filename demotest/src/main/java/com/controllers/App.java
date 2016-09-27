package com.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.google.gson.Gson;
import com.models.CompanyModel;
import com.models.EmployeeModel;
import com.propertyloader.AppConfig;
import com.propertyloader.ConfigPropsBean;
import com.propertyloader.DbPropsBean;

public class App {

	/*
	 * http://docs.spring.io/spring-social-facebook/docs/current/reference/htmlsingle/ 
	 * https://developers.facebook.com/tools/accesstoken/
	 * */	
	
	public static void main(String... args){
		
		Gson g =new Gson();
		/*ApplicationContext config = 
			      new AnnotationConfigApplicationContext(SocialConfig.class);*/
		
		/*String accessToken = "EAAQEsXBRHbgBABqhpXVJZCe4cBSzZCoYMGstv9ZCaGKvHOJol5Sd3daj8iIZBhBQt3htFfXaxtjLtMzORTHq1WuZASHjZCwFADFybkd1URLqZBW9MMdNy5ruhEuxWZAaMu53lei6mHdVfFbxxYrZAA9cWVqbJ9msNqbvJLyeWfMdmXgZDZD";
		
		Facebook facebook = new FacebookTemplate(accessToken);
		
		User profile = facebook.userOperations().getUserProfile();
		
		
		System.out.println(profile.getFirstName());*/
		
		
		/*FacebookLink link = new FacebookLink("http://www.springsource.org/spring-social",
		        "Spring Social",
		        "The Spring Social Project",
		        "Spring Social is an extension to Spring to enable applications to connect with service providers.");
		facebook.feedOperations().postLink("I'm trying out Spring Social!", link);
		facebook.feedOperations().post(new PostData("me").message("I'm trying out Spring Social!")
		    .link("http://www.springsource.org/spring-social", null, "Spring Social", "The Spring Social Project", "Spring Social is an extension to Spring to enable applications to connect with service providers."));
		*/
		/*============================================================================*/
		/*ApplicationContext config = 
			      new AnnotationConfigApplicationContext(AppConfig.class);
		
		ConfigPropsBean configPropsBean = (ConfigPropsBean)config.getBean(ConfigPropsBean.class);
		System.out.println("ConfigMemberCalling= "+g.toJson(configPropsBean));
		
		DbPropsBean dbPropsBean = (DbPropsBean)config.getBean(DbPropsBean.class);
		System.out.println("ConfigMemberCalling= "+g.toJson(dbPropsBean));*/
		
		/*============================================================================*/
		
		/*==============================================================================*/
		/*AnnotationConfigApplicationContext annotationContext = new AnnotationConfigApplicationContext();*/
		/*
		 * Below line will scan the given package for Components. It will be
		 * refreshed then to get bean from the same.
		 */
		/*annotationContext.scan("com.models");
		annotationContext.refresh();
		
		EmployeeModel employee = (EmployeeModel)annotationContext.getBean("employeebean");
		employee.setId(345634L);
		employee.setName("HJGHJ");
		employee.setSalary("4564346");
		CompanyModel company = (CompanyModel)annotationContext.getBean("companybean");
		company.setId("345345");
		company.setName("IBM");
		
		
		System.out.println("MemberCalling= "+company.toString());*/
		/*=================================================================================*/
	}
}
