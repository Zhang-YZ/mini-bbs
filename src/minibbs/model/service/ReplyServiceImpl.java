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

}
