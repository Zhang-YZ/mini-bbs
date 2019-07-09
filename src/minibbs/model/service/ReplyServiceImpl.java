package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;

public class ReplyServiceImpl extends BaseService<Reply> implements ReplyService{

	@Override
	public List<Reply> getRepliesByPost(Post post) {
		// TODO Auto-generated method stub		
		return this.getDao().findBy("post.id", post.getId());
	}

	@Override
	public void addReply(Reply reply) {
		// TODO Auto-generated method stub
		this.getDao().save(reply);
	}

	@Override
	public List<Reply> getRepliesByPostAscTime(Post post) {
		// TODO Auto-generated method stub
		return this.getDao().findBy("post.id", post.getId(),"createTime asc");
	}

	@Override
	public void deleteReplyById(long id) {
		// TODO Auto-generated method stub
		this.getDao().delete(id);
	}

	@Override
	public Reply getReplyById(long id) {
		// TODO Auto-generated method stub
		return this.getDao().get(id);
	}

	@Override
	public void deleteRepliesByPost(Post post) {
		// TODO Auto-generated method stub
		List<Reply> replies = getRepliesByPost(post);
		for(Reply tempReply:replies) {
			deleteReplyById(tempReply.getId());
		}
		
	}

	@Override
	public void deleteRepliesByPosts(List<Post> posts) {
		// TODO Auto-generated method stub
		for(Post post:posts) {
			deleteRepliesByPost(post);
		}
	}

}
