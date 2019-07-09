package minibbs.action;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.websocket.Session;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.ReplyService;
import minibbs.util.HeatUtil;

public class ReplyAction extends BaseAction<Reply, ReplyService> {
	private static final long serialVersionUID = 1L;
	private Theme postsTheme;
	private List<Post> posts;
	private List<List<Reply>> replies = new ArrayList<List<Reply>>();
	private List<List<Post>> themePosts = new ArrayList<List<Post>>();
	private Post tempPost;
	private String errorMessage; 
	private List<Integer> replyNum;
	private List<Integer> heatNum;
	private List<Theme> themetable;
	
	public String getRepliesToDetail() {
		for (Post post : posts) {
			List<Reply> reply = this.getService().getRepliesByPostAscTime(post);
			replies.add(reply);
		}
		return SUCCESS;
	}
	
	public String getReplyNumToIndex() throws ParseException {
		replyNum = new ArrayList<Integer>();
		heatNum = new ArrayList<Integer>();
		int tempReplyNum;
		long tempTime;
		long tempTime2;
		for(int i=0;i<themePosts.size();i++) {
			tempReplyNum = 0;
			tempTime=0;
			tempTime2=0;
			for(int j=0;j<themePosts.get(i).size();j++) {
				if(themePosts.get(i).get(j)!=null) {
					tempTime2=HeatUtil.turnToSecond(themePosts.get(i).get(0).getCreateTime());
					tempTime = tempTime>tempTime2?tempTime:tempTime2;
					List<Reply> replies = this.getService().getRepliesByPost(themePosts.get(i).get(j));
					for(int k=0;k<replies.size();k++) {
						if(replies.get(k)!=null) {
							tempTime2=HeatUtil.turnToSecond(replies.get(k).getCreateTime());
							tempTime = tempTime>tempTime2?tempTime:tempTime2;
							break;
						}
					}
					tempTime = tempTime>tempTime2?tempTime:tempTime2;
					tempReplyNum += (1+replies.size());
				}	
			}
			
			replyNum.add(tempReplyNum);		
			heatNum.add(HeatUtil.getHeat(tempTime, themetable.get(i).getHit(), tempReplyNum));
		}
		return SUCCESS;	
	}
	
	public String getRepliesToProfile() {
		for (Post post : posts) {
			List<Reply> reply = this.getService().getRepliesByPost(post);
			replies.add(reply);
		}
		return SUCCESS;
	}

	public String addReply() {
		try {
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

	public String deleteSingleReply() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User nowUser = (User) session.get("user");
		if(nowUser == null) {
			return "tologin";
		}
		Long tempId = this.getModel().getId();
		Reply tempReply = this.getService().getReplyById(tempId);
		if(tempReply.getUser().getId()!=nowUser.getId() && nowUser.getId()!=1) {
			errorMessage="您的权限不足！";
			return SUCCESS;
		}
		this.getService().deleteReplyById(tempId);
		return SUCCESS;
	}
	
	
	
	public String deleteReplies() {
		this.getService().deleteRepliesByPost(tempPost);
		return SUCCESS;
	}
	
	public String deleteRepliesByPosts() {
		this.getService().deleteRepliesByPosts(posts);
		return SUCCESS;
	}
	
	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public Theme getPoststheme() {
		return postsTheme;
	}

	public void setPoststheme(Theme postsTheme) {
		this.postsTheme = postsTheme;
	}

	public List<List<Reply>> getReplies() {
		return replies;
	}

	public void setReplies(List<List<Reply>> replies) {
		this.replies = replies;
	}

	public Post getTempPost() {
		return tempPost;
	}

	public void setTempPost(Post tempPost) {
		this.tempPost = tempPost;
	}


	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}


	public List<List<Post>> getThemePosts() {
		return themePosts;
	}


	public void setThemePosts(List<List<Post>> themePosts) {
		this.themePosts = themePosts;
	}

	public List<Integer> getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(List<Integer> replyNum) {
		this.replyNum = replyNum;
	}
	public List<Theme> getThemetable() {
		return themetable;
	}

	public void setThemetable(List<Theme> themetable) {
		this.themetable = themetable;
	}

}
