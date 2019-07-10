package minibbs.model.service;

import java.util.List;

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

	@Override
	public User getUserById(long id) {
		// TODO Auto-generated method stub
		User user = this.getDao().getSingle("id", id);
		return user;
	}

	@Override
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return this.getDao().getSingle("email", email);
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return this.getDao().findAll("createTime asc");
		
	}

	@Override
	public void mergeUser(User user) {
		// TODO Auto-generated method stub
		this.getDao().merge(user);
	}

}
