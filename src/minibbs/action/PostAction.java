package minibbs.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.PostService;

public class PostAction extends BaseAction<Post, PostService> {
	private static final long serialVersionUID = 1L;

	private Theme postsTheme;
	private List<Post> posts;
	private long postsThemeId;
	private User tempUser;
	private Post tempPost;
	private long tempPostId;
	private List<Theme> themetable;
	private String errorMessage; 

	public String getPostToReply() {
		this.tempPost = this.getService().getPostById(tempPostId);
		return SUCCESS;
	}

	public String getPostsToDetail() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		postsTheme = (Theme) session.get("nowtheme");
		posts = this.getService().getPostByThemeAscTime(postsTheme);
		return SUCCESS;
	}

//	public String getPostNumToIndex() {
//		
//	}

	public String addPost() {
		try {
			Map<String, Object> session = ActionContext.getContext().getSession();
			postsTheme = (Theme) session.get("nowtheme");
			User user = (User) session.get("user");
			if (user == null) {
				return "tologin";
			}
			Post post = this.getModel();
			post.setUser(user);
			post.setTheme(postsTheme);
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

	
	public String deleteSinglePost() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		tempUser = (User) session.get("user");
		if(tempUser == null) {
			return "tologin";
		}
		tempPostId = this.getModel().getId();
		tempPost=this.getService().getPostById(tempPostId);
		System.out.println("++++++++++++ "+tempPost+"  "+tempPostId);
		if(tempPost.getUser().getId()!=tempUser.getId()&& tempUser.getId()!=1) {
			errorMessage="您的权限不足！";
			return SUCCESS;
		}
		return "toDeleteReply";
	}
	
	public String actDeletePost() {
		this.getService().deletePostById(tempPost.getId());
		return SUCCESS;
	}
	public String actDeletePosts() {
		for(Post post:posts) {
			this.getService().deletePostById(post.getId());
		}
		return SUCCESS;
	}
	
	public String deleteThemePosts() {
		posts = this.getService().getPostByTheme(postsTheme);
		if(posts==null || posts.size()==0) {
			return SUCCESS;	
		}
		else {
			return "deletePosts";
		}
	}
	
	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public Theme getPostsTheme() {
		return postsTheme;
	}

	public void setPostsTheme(Theme postsTheme) {
		this.postsTheme = postsTheme;
	}

	public long getPoststhemeid() {
		return postsThemeId;
	}

	public void setPoststhemeid(long postsThemeId) {
		this.postsThemeId = postsThemeId;
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

	public List<Theme> getThemetable() {
		return themetable;
	}

	public void setThemetable(List<Theme> themetable) {
		this.themetable = themetable;
	}


	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
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
