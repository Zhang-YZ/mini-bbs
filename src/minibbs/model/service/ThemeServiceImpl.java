package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Theme;
import minibbs.model.entity.User;


public class ThemeServiceImpl extends BaseService<Theme> implements ThemeService{

	@Override
	public List<Theme> getAllThemes(String cond) {
		// TODO Auto-generated method stub
		List<Theme> themes = this.getDao().findAll(cond);
		return themes;
	}
	
	@Override
	public List<Theme> getAllThemes() {
		// TODO Auto-generated method stub
		return getAllThemes(null);
	}

	@Override
	public void saveTheme(Theme theme) {
		// TODO Auto-generated method stub
		this.getDao().save(theme);
	}

	@Override
	public Theme getThemeById(long id) {
		// TODO Auto-generated method stub
		Theme theme = this.getDao().getSingle("id", id);
		return theme;
	}

	@Override
	public List<Theme> getThemesByUserDescTime(User user) {
		// TODO Auto-generated method stub
		return this.getDao().findBy("user.id", user.getId(),"createTime desc");
	}

	@Override
	public List<Theme> getThemesBySubString(String cond) {
		// TODO Auto-generated method stub
		
		return this.getDao().findBySubString("title", cond);
	}

	@Override
	public void mergeTheme(Theme theme) {
		// TODO Auto-generated method stub
		this.getDao().merge(theme);
		
	}

	@Override
	public void deleteThemeById(long id) {
		// TODO Auto-generated method stub
		this.getDao().delete(id);
	}
	
	
	
	
//
//	@Override
//	public User verify(String email, String password) {
//		// TODO Auto-generated method stub
//		User user = this.getDao().getSingle("email", email);
//		if(user == null) {
//			return null;
//		}
//		String dealedPassword = Encrypt.encrypt(password+user.getSalt());
//		if(user.getPassword().equals(dealedPassword)){
//			return user;
//		}
//		return null;
//	}
//
//	@Override
//	public void register(User user) {
//		// TODO Auto-generated method stub
//		user.setSalt(Encrypt.getSalt());
//		user.setPassword(Encrypt.encrypt(user.getPassword()+user.getSalt()));
//		this.getDao().save(user);
//	}
//
//	@Override
//	public boolean checkEmail(String email) {
//		// TODO Auto-generated method stub
//		User user = this.getDao().getSingle("email", email);
//		if(user == null) {
//			return true;
//		}
//		return false;
//	}

}
