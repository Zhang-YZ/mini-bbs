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
	
	public void getPostsByTheme() {
		Theme theme = (Theme) ServletActionContext.getRequest().getAttribute("theme");
		List<Post> posts = this.getService().getPostByTheme(theme);
		ServletActionContext.getRequest().setAttribute("posts", posts);
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

}
