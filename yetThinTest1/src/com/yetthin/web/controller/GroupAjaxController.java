package com.yetthin.web.controller;

import java.io.PrintWriter;
import java.util.Map;

import javax.annotation.Resource;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yetthin.web.common.BaseController;
import com.yetthin.web.domain.Group;
import com.yetthin.web.service.GroupService;

@Controller
@RequestMapping("/groupAjax")
public class GroupAjaxController extends BaseController{
	
	@Resource(name="GroupService")
	private GroupService groupService;
	
	@ResponseBody
	@RequestMapping(value="/get",method=RequestMethod.GET)
	public Group get(@RequestParam("groupId")String id){
		Group g=groupService.get(id);
		return g;
	}
	@ResponseBody
	@RequestMapping("delete")
	public int delete(@RequestParam("deleteId")String id){
		int i=0;
		try {
			i = groupService.delete(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	@ResponseBody
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public int insert(@ModelAttribute(value="group")Group group){
		int i=0;
		try {
			i = groupService.save(group);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	// REST 风格 的CRUT  
	/**
	 *  get select
	 *  post add
	 *  put  new
	 *  delete delete
	 */
	
	
	// 更新表弟回显设置 
	@RequestMapping(value="/rest/{id}",method=RequestMethod.GET)
	public String getrest(@PathVariable("id")String id,Map<String, Object> map){
		Group g= groupService.get(id);
		map.put("group", g);
		return "/group/input";
	}
	//新增 回显
	@RequestMapping(value="/rest",method=RequestMethod.GET)
	public String getrest(Map<String, Object>map){
		map.put("group", new Group());
		return "/group/input";
	}
	
	@ResponseBody
	@RequestMapping(value="/rest",method=RequestMethod.POST)
	public int addrest(Group group){
		 int i=0;
		try {
			i = groupService.save(group);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	@ResponseBody
	@RequestMapping(value="/rest",method=RequestMethod.PUT)
	public int updaterest(Group group){
		 int i=groupService.update(group);
		return i;
	}
	
	@ResponseBody
	@RequestMapping(value="/rest/{id}",method=RequestMethod.DELETE)
	public int deleterest(@PathVariable("id")String id){
		int i=0;
		try {
			i = groupService.delete(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	@ModelAttribute()
	public void getGroup(
			@RequestParam(value="id",required=false)Integer id,Map<String, Object> map){
		if(id!=null){
			map.put("group", groupService.get(Integer.toString(id)));
		} 
	}

	
}
