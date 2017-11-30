package com.gy.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gy.model.User;
import com.gy.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(HttpServletRequest req,HttpServletResponse res){
		ModelAndView mv = new ModelAndView("login");
		if(req.getMethod()=="POST"){
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String checkbox = req.getParameter("checkbox");
			if(userService.selectByUsernameAndPassword(username, password)!=null){
				mv.addObject("msg", "登录成功");
			}else{
				mv.addObject("msg", "用户名或密码不正确");
			}
			if(checkbox!=null){
				Cookie nameCookie = new Cookie("username", username);
				nameCookie.setMaxAge(30*24*60*60);
				Cookie passCookie = new Cookie("password", password);
				passCookie.setMaxAge(30*24*60*60);
				res.addCookie(nameCookie);
				res.addCookie(passCookie);
			}else{
				Cookie nameCookie = new Cookie("username", null);
				nameCookie.setMaxAge(0);
				Cookie passCookie = new Cookie("password", null);
				passCookie.setMaxAge(0);
				res.addCookie(nameCookie);
				res.addCookie(passCookie);
			}
		}
		return mv;
	}
	
	@RequestMapping(value="/register",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView create_account(HttpServletRequest req,HttpServletResponse res){
		ModelAndView mv = new ModelAndView("create-account");
		if(req.getMethod()=="POST"){
			String username = req.getParameter("username");
			String firstname = req.getParameter("first_name");
			String lastname = req.getParameter("last_name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			//验证用户名是否存在。
			if(userService.selectByUsername(username)!=null){
				mv.addObject("msg", "用户已存在");
			}else{
				User user = new User();
				user.setEmail(email);
				user.setFirstname(firstname);
				user.setLastname(lastname);
				user.setPassword(password);
				user.setUsername(username);
				userService.insert(user);
				mv.addObject("msg", "注册成功");
			}
		}
		return mv;
	}
	
	@RequestMapping(value="/home")
	public String home(){
		return "home";
	}
	
}
