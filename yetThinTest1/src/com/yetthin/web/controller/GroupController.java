package com.yetthin.web.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yetthin.web.common.BaseController;
import com.yetthin.web.domain.Group;
import com.yetthin.web.service.GroupService;

@RequestMapping("/group")
@Controller
public class GroupController extends BaseController{
	@Resource(name="GroupService")
	private GroupService groupService;
	
	@RequestMapping(value="/get",method=RequestMethod.GET)
	public String getGroup(@RequestParam("group_id")String id,@RequestParam(value="flag",required=false)Integer flag,Model modal){
		if(flag==1){
			return "/group/updateBefore";
			}
		else{
			Group group=groupService.get(id);
		modal.addAttribute("group",group);
		return "group/show";
		}
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(@RequestParam("group_id")String id,Model modal){
		int i=0;
		try {
			i = groupService.delete(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		modal.addAttribute("delete",i);
		}
		return "group/delete";
	}
	 
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(@ModelAttribute("group")Group group,Model modal){
		int i=0;
		try {
 			i=groupService.save(group);
			System.out.println(group);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			modal.addAttribute("insert", i);
		}
		return "group/insert";
	}
	@ModelAttribute
	public void getGroup(
			@RequestParam(value="group_id",required=false)Integer id,Map<String, Object>map){
		if(id!=null&&map.get("group")==null){
			Group group = groupService.get(Integer.toString(id));
			map.put("group",group);
		} 
	}
	@RequestMapping(value="/updateBefore",method=RequestMethod.GET)
	public String updateBefore(){
		return "/group/updateBefore";
	}
	@RequestMapping(value="/update")
	public String update(Group group,Model model){
		int i=groupService.update(group);
		model.addAttribute("update",i);
		return "/group/update";
	}
		@RequestMapping(value="/getAll",method=RequestMethod.GET)
		public String getAll(Model model){
			
			List<Group> groups=groupService.getAll();
			model.addAttribute("groups",groups);
			return "/group/showAll";
		}
	
	 
}
