package com.yetthin.web.domain;

public class Group_User {
    private Integer id;

    private String userId;

    private String groupId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	@Override
	public String toString() {
		return "Group_User [id=" + id + ", userId=" + userId + ", groupId=" + groupId + "]";
	}
 
}