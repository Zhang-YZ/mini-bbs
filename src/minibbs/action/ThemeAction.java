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
	private User tempUser;
	private String searchContent;
	private Theme postsTheme;
	private String errorMessage; 
	
	public String getTimeDescThemes() {
		themetable = this.getService().getAllThemes("createTime desc");
		return SUCCESS;
	}
	
	public String searchTheme() {
		themetable = this.getService().getThemesBySubString(searchContent);
		return SUCCESS;
	}
	
		
	public String createTheme() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if (user == null) {
			return "tologin";
		}
		Theme theme = this.getModel();
		if (theme.getTitle() == null || theme.getTitle().contentEquals("")) {
			this.errorMessage="请填写标题";
			return INPUT;
		}
		theme.setUser(user);
		this.getService().saveTheme(theme);
		return SUCCESS;
	}

				
	public String gotoDetail() {
		Theme nowTheme =this.getService().getThemeById(themeId);
		nowTheme.setHit(nowTheme.getHit()+1);
		this.getService().mergeTheme(nowTheme);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("nowtheme", nowTheme);
		return SUCCESS;		
	}

	public String getThemesToProfile() {
		themetable = this.getService().getThemesByUserDescTime(tempUser);
		return SUCCESS;
	}
	
	public String deleteSingleTheme() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		postsTheme = (Theme) session.get("nowtheme");
		tempUser = (User) session.get("user");
		if(tempUser==null) {
			return "tologin";
		}
		if(postsTheme == null) {
			return "toindex";
		}
		if(tempUser.getId()!=postsTheme.getUser().getId() && tempUser.getId()!=1) {
			this.errorMessage="您的权限不足！";
			return ERROR;
		}
		return SUCCESS;
	}
	public String actDeleteTheme() {
		this.getService().deleteThemeById(postsTheme.getId());
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("nowtheme");
		return SUCCESS;
	}
	
	public List<Theme> getThemetable() {
		return themetable;
	}

	public void setThemetable(List<Theme> themetable) {
		this.themetable = themetable;
	}

	
	public long getThemeId() {
		return themeId;
	}

	public void setThemeId(long themeId) {
		this.themeId = themeId;
	}

	public User getTempUser() {
		return tempUser;
	}

	public void setTempUser(User tempUser) {
		this.tempUser = tempUser;
	}

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public Theme getPostsTheme() {
		return postsTheme;
	}

	public void setPostsTheme(Theme postsTheme) {
		this.postsTheme = postsTheme;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
