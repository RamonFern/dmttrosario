package br.com.dmttrosario.ramon.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.com.dmttrosario.ramon.daos.UsuarioDAO;

@EnableWebMvcSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{

	
	@Autowired
	private UsuarioDAO usuarioDao;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		    .antMatchers("/veiculos/form").hasRole("ADMIN")
		    .antMatchers(HttpMethod.POST,"/veiculos").hasRole("ADMIN")
		    .antMatchers(HttpMethod.GET,"/veiculos").hasRole("ADMIN")
		    .antMatchers("/veiculos/**").permitAll()
		    .antMatchers("/resources/**").permitAll()
		    .antMatchers("/").permitAll()
		    .antMatchers("/album").permitAll()
		    .antMatchers("/contato").permitAll()
		    .antMatchers("/operacaoTransito").permitAll()
		    .antMatchers("/quemsomos").permitAll()
		    .antMatchers("/cursoGmAt").permitAll()
		    .antMatchers("/url-magica-maluca-234ksksdfhns34634d47broiehoihe754lbnlrnbadfnbrer73097093485345340").permitAll()
		    .anyRequest().authenticated()
		    .and().formLogin().loginPage("/login").permitAll()
		    .and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.userDetailsService(usuarioDao)
		.passwordEncoder(new BCryptPasswordEncoder());
	
	}
}
