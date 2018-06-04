package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.stereotype.Service;
@Service
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private MyUserDetailsService userDetailsFitService;//注意，这个MyUserDetailsService就是上个步骤中定义的bean
	@Override
	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
	  return super.authenticationManagerBean();
	}


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.formLogin().loginPage("/login").permitAll().and().authorizeRequests().antMatchers("/health", "/css/**")
		.anonymous().and().authorizeRequests().anyRequest().authenticated();
	}



	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsFitService);
		auth.parentAuthenticationManager(authenticationManagerBean());
	}
}
