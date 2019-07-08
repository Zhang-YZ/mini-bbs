package minibbs.model.entity;

public class Theme extends BaseEntity {
	public Theme() {
		super(0);
		this.heat=0;
		// TODO Auto-generated constructor stub
	}

	public Theme(long id) {
		super(id);
	}
	
	public Theme(String title,String content) {
		this();
		this.title=title;
		this.content=content;
	}
	
	private User user;
	private long heat;
	private String title;
	private String content;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getHeat() {
		return heat;
	}

	public void setHeat(long heat) {
		this.heat = heat;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
