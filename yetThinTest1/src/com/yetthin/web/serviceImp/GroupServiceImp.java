package com.yetthin.web.serviceImp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yetthin.web.domain.Group;
import com.yetthin.web.persistence.GroupMapper;
import com.yetthin.web.persistence.Group_UserMapper;
import com.yetthin.web.service.GroupService;

@Service("GroupService")
public class GroupServiceImp implements GroupService{
	@Resource
	private GroupMapper groupMapper;
	@Resource
	private Group_UserMapper group_userMapper;
	
	@Override 
	public Group get(String id) {
		// TODO Auto-generated method stub
		Group group=null;
		if(id!=null&&!"".equals(id.trim()))
		System.out.println("before");
		  
		group=groupMapper.selectByPrimaryKey(Integer.parseInt(id));
		System.out.println(group);
		return group;
	}

	@Override
	public int save(Group entity) throws Exception {
		// TODO Auto-generated method stub
		
		int i=0;
		if(entity!=null)
			i=groupMapper.insertSelective(entity);
		return i;
	}

	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	@Override
	public int delete(String id) throws Exception {
		// TODO Auto-generated method stub
		int i=0;
		if(id!=null&&!"".equals(id.trim())){
			System.out.println("come into delete if");
			i=group_userMapper.deleteGroup(Integer.parseInt(id));
			System.out.println("delete primary ");
			i=i+groupMapper.deleteByPrimaryKey(Integer.parseInt(id));
		}
		return i;
	}

	@Override
	public List<Group> getAll() {
		// TODO Auto-generated method stub
		return groupMapper.selectAll();
	}


	@Override
	public int countById(Integer id) {
		// TODO Auto-generated method stub
		int i=0;
		if(id!=0&&id!=null)
			i=groupMapper.countById(id);
		return i;
	}
	
	@Transactional(propagation=Propagation.REQUIRES_NEW,isolation=Isolation.READ_COMMITTED)
	@Override
	public int update(Group idEntity) {
		// TODO Auto-generated method stub
		
		return groupMapper.updateByPrimaryKey(idEntity);
	}
	

 
}
