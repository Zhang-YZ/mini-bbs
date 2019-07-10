package minibbs.action;

import java.util.List;
import java.util.Map;

import javax.swing.Spring;

import com.opensymphony.xwork2.ActionContext;
import minibbs.model.entity.User;
import minibbs.model.service.UserService;

public class UserAction extends BaseAction<User,UserService>{
	private static final long serialVersionUID = 1L;

	private User tempUser;
	private long tempUserId;
	private String searchContent;
	private List<User> users;
	
    public String signin() throws Exception{
    	String email = this.getModel().getEmail();
		String password = this.getModel().getPassword();
		if(email == null) {
			this.errorMessage="请输入邮箱！";
			return INPUT;
		}
		if(password==null) {
			this.errorMessage="请输入密码！";
			return INPUT;
		}
		User user = this.getService().verify(email, password);
		if (user != null){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}
		this.errorMessage="用户名或密码错误！";
		return INPUT;
    }
    

    public void reset() {
    	
    }    

    public String signup() throws Exception{
    	String email = this.getModel().getEmail();
    	String password = this.getModel().getPassword();
    	String repeatpw = this.getModel().getRepeatpw();
    	boolean check = this.getService().checkEmail(email);
    	if(!check) {
    		this.errorMessage="Email已经被占用，请重新输入";
    		return INPUT;
    	}
    	if(!repeatpw.equals(password)){
    		this.errorMessage="两次输入密码不一致！";
    		return INPUT;
    	}
    	try {
			this.getService().register(this.getModel());
		}
		catch (Exception ex){
			this.addActionError(ex.getMessage());
			return INPUT;
		}
    	return SUCCESS;
    }

    
    public static String hasLogin() {
    	Map<String, Object> session = ActionContext.getContext().getSession();
    	User user = (User) session.get("user");
    	if(user==null) {
    		return INPUT;
    	}
    	return SUCCESS;
    }
    
    
	public String signout() throws Exception {
		ActionContext.getContext().getSession().clear();
		return SUCCESS;
	}
    
	public String gotoSelfProfile() {
    	Map<String, Object> session = ActionContext.getContext().getSession();
    	this.tempUser = (User) session.get("user");
    	if(tempUser==null) {
    		return INPUT;
    	}
    	return SUCCESS;
	}

	public String gotoProfile() {
    	Map<String, Object> session = ActionContext.getContext().getSession();
    	User user = (User) session.get("user");
    	if(user==null) {
    		return INPUT;
    	}
    	this.tempUser = this.getService().getUserById(tempUserId);
    	return SUCCESS;
	}

	public String search() {
		if(this.searchContent==null) {
			return NONE;
		}
		
		if(searchContent.length()>=7  && searchContent.substring(0,7).equals("@email ")) {
			String emailString = this.searchContent.substring(7).strip();
			this.tempUser = this.getService().getUserByEmail(emailString);
			if(this.tempUser==null) {
				return NONE;
			}
			else {
				Map<String, Object> session = ActionContext.getContext().getSession();
		    	User user = (User) session.get("user");
		    	if(user==null) {
		    		return INPUT;
		    	}
				return "isuser";
			}
		}
		else{
			return "istheme";		
		}
		
	}
	
	public String changeNickname() {
		Map<String, Object> session = ActionContext.getContext().getSession();
    	tempUser = (User) session.get("user");
    	tempUser.setNickname(this.getModel().getNickname());
    	this.getService().mergeUser(tempUser);
    	return SUCCESS;
	}

	public String gotoRank() {
		users = this.getService().getAllUsers();
		return SUCCESS;
	}
	
	
	public User getTempUser() {
		return tempUser;
	}


	public void setTempUser(User tempUser) {
		this.tempUser = tempUser;
	}


	public long getTempUserId() {
		return tempUserId;
	}


	public void setTempUserId(long tempUserId) {
		this.tempUserId = tempUserId;
	}


	public String getSearchContent() {
		return searchContent;
	}


	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}


	public List<User> getUsers() {
		return users;
	}


	public void setUsers(List<User> users) {
		this.users = users;
	}
    
}
