package minibbs.model.entity;

public class Post extends BaseEntity{
    public Post() {
		super(0);
		this.favor=0;
		// TODO Auto-generated constructor stub
	}

    public Post(String content) {
    	this();
    	this.content=content;
    }
    
    public Post(String content,Theme theme) {
    	this();
    	this.content=content;
    	this.theme=theme;
    };
//    public Post(Theme theme,String content) {
//    	this();
//    	this.content=content;
//    	this.theme=theme;
//    }

	private User user;
    private Theme theme;
    private String content;
    private int favor;
	
    
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Theme getTheme() {
		return theme;
	}


	public void setTheme(Theme theme) {
		this.theme = theme;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	public int getFavor() {
		return favor;
	}

	public void setFavor(int favor) {
		this.favor = favor;
	}
	
}
