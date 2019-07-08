package minibbs.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import minibbs.model.entity.Theme;
import minibbs.model.entity.User;
import minibbs.model.service.ThemeService;

public class ThemeAction extends BaseAction<Theme, ThemeService> {
	private static final long serialVersionUID = 1L;
	private List<Theme> themetable = new ArrayList<Theme>();
	private long themeId;
	
	public String getTimeDescThemes() {
		themetable = this.getService().getAllThemes("createTime desc");
		System.out.println("============= get");
//		ServletActionContext.getRequest().setAttribute("themetable", timeDescThemes);
		return SUCCESS;
	}
	
	public List<Theme> getThemetable() {
		return themetable;
	}

	public void setThemetable(List<Theme> themetable) {
		this.themetable = themetable;
	}

	
	public String createTheme() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if (user == null) {
			return "tologin";
		}
		Theme theme = this.getModel();
		if (theme.getTitle() == null || theme.getTitle().contentEquals("")) {
			this.addFieldError("title", "请填写标题");
			return INPUT;
		}
		theme.setUser(user);
		this.getService().createTheme(theme);
		System.out.println(theme.getTitle() + " " + theme.getContent());
		System.out.println("====================== ok createtheme");
		return SUCCESS;
	}

	
	
	public void getTheme() {
		long id = this.getModel().getId();
		Theme theme = this.getService().getThemeById(id);
		try {
		ServletActionContext.getRequest().setAttribute("theme", theme);
		System.out.println("================ theme ok");
		User user = theme.getUser();
		ServletActionContext.getRequest().setAttribute("author", user.getNickname());
		System.out.println("================ user ok" +user + " "+ user.getEmail());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("========e " +e);
		}
	}
				
	public String gotoDetail() {
		Theme nowTheme =this.getService().getThemeById(themeId);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("nowtheme", nowTheme);
		System.out.println("========== gotodetail" + nowTheme);
		return SUCCESS;		
	}
//		ServletActionContext.getRequest().setAttribute("themetable", timeDescThemes);
//		Map<String, Object> session = ActionContext.getContext().getSession();
//		session.put("theme", theme);

	public long getThemeId() {
		return themeId;
	}

	public void setThemeId(long themeId) {
		this.themeId = themeId;
	}

}
