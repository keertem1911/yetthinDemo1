package com.yetthin.web.persistence;

import java.util.List;

import com.yetthin.web.domain.User;

public interface UserMapper  extends BaseMapper<User>{
		public abstract List<User> getAll();
}