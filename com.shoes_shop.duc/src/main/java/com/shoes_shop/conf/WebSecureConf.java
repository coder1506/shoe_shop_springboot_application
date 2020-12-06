package com.shoes_shop.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
// -> đồng thời module web sẽ biết được đây là file cấu hình của web.
@EnableWebSecurity
public class WebSecureConf extends WebSecurityConfigurerAdapter {
	@Autowired private UserDetailsService userDetailsService;
	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests() // thực hiện xác thực request ngưười dùng gửi lên.
			
			// không thực hiện xác thực đối với các url này.
            .antMatchers("/css/**", "/js/**", "/images/**", "/assets/**", "/file/uploads/**").permitAll()
            
            // thực hiện xác thực với các url kiểu ..../admin/....
//            .antMatchers("/admin/**").hasAnyAuthority("ADMIN")
            .antMatchers("/admin/**").authenticated()
            
            .and() // kết hợp với điều kiện.
            
            // khi click vào button logout thì không cần login.
            // khi click vào button này thì dữ liệu user trên session sẽ bị xoá.
            .logout()
            .logoutUrl("/logout")
            .logoutSuccessUrl("/login")
            .invalidateHttpSession(true) // xoá hết dữ liệu trên seesion
            .deleteCookies("JSESSIONID") // xoá hết dữ liệu trên cokies.
            .permitAll()
            
            .and() // kết hợp với điều kiện.
            
            .formLogin() // thực hiện xác thực qua form(username và password)
            .loginPage("/login") // trang login do mình thiết kế, trỏ vào request-mapping trong controller.
            .loginProcessingUrl("/login") // link action for form post.
            .defaultSuccessUrl("/admin/dashboard", true) // when user success authenticated then go to this url.
            .failureUrl("/login?error_login=true") // nhập username, password sai thì redirect về trang nào.
            .permitAll();
	}
	@Bean public PasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(8);
		return encoder;
    }
	
	@Autowired public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}
}

