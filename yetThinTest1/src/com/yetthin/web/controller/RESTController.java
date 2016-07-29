package com.yetthin.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yetthin.web.common.BaseController;
import com.yetthin.web.service.GroupService;

@Controller
@RequestMapping("/rest")
public class RESTController extends BaseController{
	@Resource(name="GroupService")
	private GroupService groupService;
	
	@RequestMapping(value="/goto",method=RequestMethod.GET)
	public String gotoREST(Model model){
		model.addAttribute("groups",groupService.getAll());
		return "/group/rest";
	}
}
