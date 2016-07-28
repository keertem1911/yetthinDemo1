package com.yetthin.web.serviceImp;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
 

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yetthin.web.domain.Group;
import com.yetthin.web.domain.Group_User;
import com.yetthin.web.domain.User;
import com.yetthin.web.persistence.Group_UserMapper;
import com.yetthin.web.service.Group_UserService;
 
@Service("Group_UserService")
public class Group_UserServiceImp implements Group_UserService{
	@Resource 
	Group_UserMapper group_userMapper;
	@Override
	public Group_User get(String id) {
		// TODO Auto-generated method stub
		 
		return null;
	}

	@Override
	public int save(Group_User entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

 
	@Override
	public User getUser(Integer id) {
		// TODO Auto-generated method stub
		User user=group_userMapper.selectByUser_IdList(id);
		System.out.println(Arrays.asList(user.getGroups()));
		return user;
	}
	
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_UNCOMMITTED)
	@Override
	public Group getGroup(Integer id) {
		Group group=group_userMapper.selectByGroup_IdList(id);
		System.out.println(Arrays.asList(group.getUsers()));
		return group;
	}

	@Override
	public List<Group_User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countById(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(Integer id) {
		// TODO Auto-generated method stub
		return group_userMapper.deleteUser(id);
	}

	@Override
	public int deleteGroup(Integer id) {
		// TODO Auto-generated method stub
		return group_userMapper.deleteGroup(id);
	}

	@Override
	public int update(Group_User idEntity) {
		// TODO Auto-generated method stub
		return 0;
	}

}
