package com.shoes_shop.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
// -> đồng thời module web sẽ biết được đây là file cấu hình của web.
@Order(2)
@EnableWebSecurity
public class WebSecureUserConf extends WebSecurityConfigurerAdapter {
	@Autowired private UserDetailsService userDetailsService;
	
	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http.cors().and().csrf().disable();
		http.antMatcher("/user/**")
		.authorizeRequests()
		.antMatchers("/user/**").hasAnyAuthority("USER")
		.and()
        .exceptionHandling().accessDeniedPage("/USER?error_access=loi")
        .and() // kết hợp với điều kiện.
        
        // khi click vào button logout thì không cần login.
        // khi click vào button này thì dữ liệu user trên session sẽ bị xoá.
        .logout()
        .logoutUrl("/userlogout")
        .logoutSuccessUrl("/")
        .invalidateHttpSession(true) // xoá hết dữ liệu trên seesion
        .deleteCookies("JSESSIONID") // xoá hết dữ liệu trên cokies.
        .permitAll()
        
        .and() // kết hợp với điều kiện.
        
        .formLogin() // thực hiện xác thực qua form(username và password)
        .loginPage("/user") // trang login do mình thiết kế, trỏ vào request-mapping trong controller.
        .loginProcessingUrl("/user") // link action for form post.
        .defaultSuccessUrl("/user/checkout", true) // when user success authenticated then go to this url.
        .failureUrl("/user?error_login=true") // nhập username, password sai thì redirect về trang nào.
        .permitAll();
	}
	@Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**", "/js/**", "/images/**", "/assets/**", "/file/uploads/**");
    }
	@Bean public PasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(8);
		return encoder;
    }
	
	@Autowired public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}
}
