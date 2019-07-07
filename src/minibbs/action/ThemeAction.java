package minibbs.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.ThemeService;

public class ThemeAction extends BaseAction<Theme,ThemeService>{
	private static final long serialVersionUID = 1L;
	
	public void getTimeDescThemes(){
		List<Theme> timeDescThemes = this.getService().getAllThemes("createTime desc");	
		ServletActionContext.getRequest().setAttribute("themetable", timeDescThemes);
	}
	
	public String createTheme() throws Exception{
		Theme theme = this.getModel();
		if(theme.getTitle()==null || theme.getTitle().contentEquals("")) {
			this.addFieldError("title", "请填写标题");
			return INPUT;
		}
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user == null) {
			return "tologin";
		}
		theme.setUser(user);
		this.getService().createTheme(theme);
		System.out.println(theme.getTitle() + " "+theme.getContent());
		System.out.println("====================== ok createtheme");
		return SUCCESS;
	}

//	public String test() {
//		System.out.println("================ hello");
//      List names = new ArrayList();
//      names.add("Robert");
//      names.add("Page");
//      names.add("Kate");
//      ServletActionContext.getRequest().setAttribute("names", names);
//		return "success";
//	}
}
