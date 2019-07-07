package minibbs.action;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import minibbs.model.entity.User;
import minibbs.model.service.UserService;

public class UserAction extends BaseAction<User,UserService>{
	private static final long serialVersionUID = 1L;
	
    public String signin() throws Exception{
    	String email = this.getModel().getEmail();
		String password = this.getModel().getPassword();
		if(email == null) {
			this.addFieldError("email", "请输入Email");
			return INPUT;
		}
		if(password==null) {
			this.addFieldError("password", "请输入密码");
			return INPUT;
		}
		User user = this.getService().verify(email, password);
		if (user != null){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}
		this.addActionError("用户名或密码错误！");
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
    		this.addFieldError("email", "Email已经被占用，请重新输入");
    		return INPUT;
    	}
    	if(!repeatpw.equals(password)){
    		this.addFieldError("repeatpw", "两次输入密码不一致！");
    		return INPUT;
    	}
    	try {
			this.getService().register(this.getModel());
		}
		catch (Exception ex){
			this.addActionError(ex.getMessage());
			return INPUT;
		}
    	System.out.println("================== ok");
    	return SUCCESS;
    }

    
    public String hasLogin() {
    	Map<String, Object> session = ActionContext.getContext().getSession();
    	User user = (User) session.get("user");
    	if(user==null) {
    		return INPUT;
    	}
    	return SUCCESS;
    }
}
