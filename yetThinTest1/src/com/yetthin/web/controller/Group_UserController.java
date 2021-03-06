package com.yetthin.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yetthin.web.domain.Group;
import com.yetthin.web.domain.User;
import com.yetthin.web.service.Group_UserService;

@Controller
@RequestMapping("/group_user")
public class Group_UserController {
	
	@Resource(name="Group_UserService")
	private Group_UserService group_UserService;
	
	@RequestMapping(value="/getGroup",method=RequestMethod.POST)
	public String getGroup(@RequestParam("group_id")String group_id,Model model){
		Group group=group_UserService.getGroup(Integer.parseInt(group_id));
		model.addAttribute("group", group);
		return "show";
	}
	
	@RequestMapping(value="/getUser",method=RequestMethod.POST)
	public String getUsers(@RequestParam("user_id")Integer id,Model model){
	
		User users=group_UserService.getUser(id);
		model.addAttribute("user", users);
		return "show";
	}
	
	
	
	
	
	
	
}
