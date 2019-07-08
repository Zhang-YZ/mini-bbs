package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;
import minibbs.model.entity.User;

public interface PostService{
	public List<Post> getPostByTheme(Theme theme);
	public List<Post> getPostByThemeAscTime(Theme theme);
	public void addPost(Post post);
	public Post getPostById(long id);
	public List<Post> getPostsByUserDescTime(User user);
}
