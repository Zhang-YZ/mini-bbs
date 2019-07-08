package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Post;
import minibbs.model.entity.Theme;

public interface PostService{
	public List<Post> getPostByTheme(Theme theme);
	public void addPost(Post post);
}
