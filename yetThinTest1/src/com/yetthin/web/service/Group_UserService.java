package com.yetthin.web.service;

import com.yetthin.web.domain.Group;
import com.yetthin.web.domain.Group_User;
import com.yetthin.web.domain.User;

public interface Group_UserService extends BaseService<Group_User>{
	public abstract User getUser(Integer id);
	public abstract Group getGroup(Integer id);
	public abstract int deleteUser(Integer id);
	public abstract int deleteGroup(Integer id);
}
