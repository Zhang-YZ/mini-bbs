package minibbs.model.entity;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public abstract class BaseEntity {
	private long id;
	private String createTime;

	public BaseEntity(long id) {
		this.id =id;
		SimpleDateFormat bjsdf =   new SimpleDateFormat( "yyyy/MM/dd  HH:mm:ss" ); 
		bjsdf.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
		this.setCreateTime(bjsdf.format(new Date()));
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}


}
