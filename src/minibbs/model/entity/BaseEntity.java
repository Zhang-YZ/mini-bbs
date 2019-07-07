package minibbs.model.entity;

import java.util.Calendar;
import java.util.Date;

public abstract class BaseEntity {
	private long id;
	private Date createTime;

	public BaseEntity(long id) {
		this.id =id;
		this.createTime = Calendar.getInstance().getTime();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
