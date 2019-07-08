package minibbs.model.entity;

public class Reply extends BaseEntity {
	public Reply() {
		super(0);
		// TODO Auto-generated constructor stub
	}
	public Reply(String content) {
		this();
		this.content=content;
	}
	private String content;
	private User user;
	private Post post;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}
}
