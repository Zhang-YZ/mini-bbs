package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;

public class PostServiceImpl extends BaseService<Post> implements PostService{

	@Override
	public List<Post> getPostByTheme(Theme theme) {
		// TODO Auto-generated method stub
		List<Post> posts =  this.getDao().findBy("theme.id", theme.getId());
		System.out.println("=============== theme okok");
		return posts;
	}

	@Override
	public void addPost(Post post) {
		// TODO Auto-generated method stub
		this.getDao().save(post);
		
	}

}
