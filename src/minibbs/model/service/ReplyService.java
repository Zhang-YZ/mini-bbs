package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;

public interface ReplyService{
	public List<Reply> getRepliesByPost(Post post);
	public List<Reply> getRepliesByPostAscTime(Post post);
	public void addReply(Reply reply);
	public void deleteReplyById(long id);
	public Reply getReplyById(long id);
	public void deleteRepliesByPost(Post post);
	public void deleteRepliesByPosts(List<Post> posts);
}
