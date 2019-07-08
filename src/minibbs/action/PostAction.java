package minibbs.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.PostService;

public class PostAction extends BaseAction<Post,PostService>{
	private static final long serialVersionUID = 1L;
	
	private Theme poststheme;
	private List<Post> posts;
	
	public String getPostsByTheme() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		poststheme = (Theme)session.get("nowtheme");
		posts = this.getService().getPostByTheme(poststheme);
		System.out.println("===========getpostbythemeok");
		return SUCCESS;
	}
	
	
	
	public void addPost() {
		System.out.println("================== addpost() begin");
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
//		if (user == null) {
//			return "tologin";
//		}
		Post post = this.getModel();
		post.setUser(user);
		System.out.println("================== " + post.getTheme());
		this.getService().addPost(post);
		System.out.println("================== addpost() end");
//		return SUCCESS;
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

}
