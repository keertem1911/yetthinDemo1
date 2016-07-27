package com.yetthin.web.serviceImp;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.yetthin.web.domain.Group;
import com.yetthin.web.domain.Group_User;
import com.yetthin.web.domain.User;
import com.yetthin.web.persistence.Group_UserMapper;
import com.yetthin.web.service.Group_UserService;
@Transactional
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
	public List<Group_User> getListByEntity(Group_User entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countByExample(Group_User entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUser(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Group getGroup(Integer id) {
		Group group=group_userMapper.selectByGroup_IdList(id);
		System.out.println(Arrays.asList(group.getUsers()));
		return group;
	}

}
