package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.User;

public interface UserService{
	
	public User verify(String email, String password);
	
	public void register(User user);
	
	public boolean checkEmail(String email);
	
	public User getUserById(long id);
	
	public User getUserByEmail(String email);
	public List<User> getAllUsers();
	public void mergeUser(User user);
}
