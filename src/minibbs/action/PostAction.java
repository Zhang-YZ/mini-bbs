package minibbs.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.PostService;

public class PostAction extends BaseAction<Post, PostService> {
	private static final long serialVersionUID = 1L;

	private Theme poststheme;
	private List<Post> posts;
	private long poststhemeid;
	private User tempUser;
	private Post tempPost;
	private long tempPostId;


	
	public String getPostToReply() {
		this.tempPost = this.getService().getPostById(tempPostId);
		System.out.println("============== postaction "+tempPost);
		return SUCCESS;
	}
	
	public String getPostsToDetail() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		poststheme = (Theme) session.get("nowtheme");
		posts = this.getService().getPostByThemeAscTime(poststheme);
		return SUCCESS;
	}
	

	public String addPost() {
		try {
			Map<String, Object> session = ActionContext.getContext().getSession();
		    poststheme = (Theme) session.get("nowtheme");
			User user = (User) session.get("user");
			if (user == null) {
				return "tologin";
			}
			Post post = this.getModel();
			post.setUser(user);
			post.setTheme(poststheme);
			this.getService().addPost(post);
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("======== except" + e);
			return "input";
		}
	}

	
	public String getPostsToProfile() {
		posts = this.getService().getPostsByUserDescTime(tempUser);
		return SUCCESS;
	}
	
	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public Theme getPoststheme() {
		return poststheme;
	}

	public void setPoststheme(Theme poststheme) {
		this.poststheme = poststheme;
	}

	public long getPoststhemeid() {
		return poststhemeid;
	}

	public void setPoststhemeid(long poststhemeid) {
		this.poststhemeid = poststhemeid;
	}


	public Post getTempPost() {
		return tempPost;
	}


	public void setTempPost(Post tempPost) {
		this.tempPost = tempPost;
	}

	public long getTempPostId() {
		return tempPostId;
	}

	public void setTempPostId(long tempPostId) {
		this.tempPostId = tempPostId;
	}

	public User getTempUser() {
		return tempUser;
	}

	public void setTempUser(User tempUser) {
		this.tempUser = tempUser;
	}


//	public String getPoststr() {
//		return poststr;
//	}
//
//
//	public void setPoststr(String poststr) {
//		this.poststr = poststr;
//	}
//
//
//	public String getTesta() {
//		return testa;
//	}
//
//
//	public void setTesta(String testa) {
//		this.testa = testa;
//	}
//
//
//	public String getTestb() {
//		return testb;
//	}
//
//
//	public void setTestb(String testb) {
//		this.testb = testb;
//	}

}
