package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;

@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfiguration extends AuthorizationServerConfigurerAdapter{
	@Autowired
	private AuthenticationManager authenticationManager;
	@Autowired
	private MyUserDetailsService userDetailsService;



	@Override

	public void configure(final AuthorizationServerSecurityConfigurer oauthServer) throws Exception {

	oauthServer.tokenKeyAccess("permitAll()").checkTokenAccess("isAuthenticated()");

	}


	@Override

	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {

	clients.inMemory() // 使用in-memory存储 

	.withClient("client") // client_id 

	.secret("secret") // client_secret 

	.authorizedGrantTypes("authorization_code") // 该client允许的授权类型

	.scopes("app"); // 允许的授权范围

	}


	@Override

	public void configure(final AuthorizationServerEndpointsConfigurer endpoints) throws Exception {

	// @formatter:off

	endpoints.authenticationManager(authenticationManager)

	.userDetailsService(userDetailsService);

	// @formatter:on

	}
}
