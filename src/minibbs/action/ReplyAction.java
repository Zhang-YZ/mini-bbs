package minibbs.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.ReplyService;

public class ReplyAction extends BaseAction<Reply,ReplyService>{
	private static final long serialVersionUID = 1L;
	private Theme poststheme;
	private List<Post> posts;
	private List<List<Reply>> replies = new ArrayList<List<Reply>>();
	private Post tempPost;
	
	public String getRepliesToDetail() {
		
		for (Post post:posts) {
			List<Reply> reply=this.getService().getRepliesByPostAscTime(post);
			replies.add(reply);
		}
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


	public List<List<Reply>> getReplies() {
		return replies;
	}


	public void setReplies(List<List<Reply>> replies) {
		this.replies = replies;
	}
	
	public String addReply() {
		try {
			System.out.println("============== post "+tempPost);
			Map<String, Object> session = ActionContext.getContext().getSession();
			User user = (User) session.get("user");
			if (user == null) {
				return "tologin";
			}
			Reply reply = this.getModel();
			reply.setUser(user);
			reply.setPost(tempPost);
			this.getService().addReply(reply);
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("======== except" + e);
			return "input";
		}
	}


	public Post getTempPost() {
		return tempPost;
	}


	public void setTempPost(Post tempPost) {
		this.tempPost = tempPost;
	}


	
	
	
	
	
	
	
	
	
	
	
//	private String replystr;
//	private String poststr;
//	private String testa;
//	private String testc;
//	private String testb;
//	public String testReply() {
//		System.out.println("!!!!!!!  from reply testa: "+testa);
//		System.out.println("!!!!!!!  from reply testc: "+testc);
//		System.out.println("!!!!!!!  from reply poststr: "+poststr);
//		replystr=testb;
//		return SUCCESS;
//	}
//	
//	public String getReplystr() {
//		return this.replystr;
//	}
//	public void setReplystr(String replystr) {
//		this.replystr=replystr;
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
//	public String getTestc() {
//		return testc;
//	}
//
//	public void setTestc(String testc) {
//		this.testc = testc;
//	}
//	
//	public String getTestb() {
//		return testb;
//	}
//
//	public void setTestb(String testb) {
//		this.testb = testb;
//	}
//
//	public String getPoststr() {
//		return poststr;
//	}
//
//	public void setPoststr(String poststr) {
//		this.poststr = poststr;
//	}

	
}
