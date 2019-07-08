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

	public void getTimeDescThemes() {
		List<Theme> timeDescThemes = this.getService().getAllThemes("createTime desc");
		ServletActionContext.getRequest().setAttribute("themetable", timeDescThemes);
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
		ServletActionContext.getRequest().setAttribute("theme", theme);
	}

}
