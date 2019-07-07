package minibbs.model.service;

import minibbs.model.entity.User;

public interface UserService{
	
	public User verify(String email, String password);
	
	public void register(User user);
	
	public boolean checkEmail(String email);
}
