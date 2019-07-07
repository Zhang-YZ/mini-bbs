package minibbs.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.ThemeService;

public class ThemeAction extends BaseAction<Theme,ThemeService>{
	private static final long serialVersionUID = 1L;
	
	public List<Theme> getTimeDescThemes(){
		List<Theme> timeDescThemes = this.getService().getAllThemes("createTime desc");		
		return timeDescThemes;
	}
	
	public String createTheme() throws Exception{
		Theme theme = this.getModel();
		if(theme.getTitle()==null || theme.getTitle().contentEquals("")) {
			this.addFieldError("title", "请填写标题");
			return INPUT;
		}
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		System.out.println(user);
		System.out.println("====================== ok33");
		theme.setUser(user);
		this.getService().createTheme(theme);
		return SUCCESS;
	}

}
