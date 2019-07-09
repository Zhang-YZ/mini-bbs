package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;

public class PostServiceImpl extends BaseService<Post> implements PostService{

	@Override
	public List<Post> getPostByTheme(Theme theme) {
		// TODO Auto-generated method stub
		List<Post> posts =  this.getDao().findBy("theme.id", theme.getId());
		return posts;
	}
	
	

	@Override
	public void addPost(Post post) {
		// TODO Auto-generated method stub
		this.getDao().save(post);
		
	}



	@Override
	public Post getPostById(long id) {
		// TODO Auto-generated method stub
		return this.getDao().get(id);
	}



	@Override
	public List<Post> getPostByThemeAscTime(Theme theme) {
		// TODO Auto-generated method stub
		List<Post> posts =  this.getDao().findBy("theme.id", theme.getId(),"createTime asc");
		return posts;
	}



	@Override
	public List<Post> getPostsByUserDescTime(User user) {
		// TODO Auto-generated method stub 
		return this.getDao().findBy("user.id", user.getId(),"createTime desc");
	}



	@Override
	public void deletePostById(long id) {
		// TODO Auto-generated method stub
		this.getDao().delete(id);
		
	}

}
