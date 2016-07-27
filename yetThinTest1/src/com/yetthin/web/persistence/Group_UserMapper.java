package com.yetthin.web.persistence;

import java.util.List;

import com.yetthin.web.domain.Group;
import com.yetthin.web.domain.Group_User;
import com.yetthin.web.domain.User;

public interface Group_UserMapper extends BaseMapper<Group_User>{
    public abstract User selectByUser_IdList(Integer id);
    public abstract Group selectByGroup_IdList(Integer id);
}