package minibbs.model.service;

import minibbs.model.entity.User;

import minibbs.util.Encrypt;

public class UserServiceImpl extends BaseService<User> implements UserService{

	@Override
	public User verify(String email, String password) {
		// TODO Auto-generated method stub
		User user = this.getDao().getSingle("email", email);
		if(user == null) {
			return null;
		}
		String dealedPassword = Encrypt.encrypt(password+user.getSalt());
		if(user.getPassword().equals(dealedPassword)){
			return user;
		}
		return null;
	}

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		user.setSalt(Encrypt.getSalt());
		user.setPassword(Encrypt.encrypt(user.getPassword()+user.getSalt()));
		this.getDao().save(user);
	}

	@Override
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		User user = this.getDao().getSingle("email", email);
		if(user == null) {
			return true;
		}
		return false;
	}

}
