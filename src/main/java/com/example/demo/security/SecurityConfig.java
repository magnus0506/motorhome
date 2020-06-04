package com.example.demo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import javax.sql.DataSource;

//Lavet af Magnus
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    //Bruger dataSource som en metode at forbinde til sql databasen
    @Autowired
    DataSource dataSource;
    @Bean
    //DataSourceBuilder bruges til at konfigurere forbindelsen
    public DataSource dataSource(){
        return DataSourceBuilder
                .create()
                .url("jdbc:mysql://localhost:3306/autohomes?serverTimezone=UTC")
                .username("root")
                .password("mag22422606")
                .build();
    }

    // Enable jdbc authentication
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource);
    }

    //Configuration til http requests på siden, .antMatchers er de urls man kan sætte begrænsninger på
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/**").hasAuthority("ROLE_ADMIN")
                .and()
                .formLogin();
        http.csrf().disable();
    }

    //Password encoder skal være med, NoOpPasswordEncoder encoder ikke noget så password er gemt som plaintext
    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }
}
    //BCryptEncoder der ikke er blevet implementeret
    /*
    int strength = 10; // work factor of bcrypt
    BCryptPasswordEncoder bCryptPasswordEncoder =
            new BCryptPasswordEncoder(strength, new SecureRandom());
    */