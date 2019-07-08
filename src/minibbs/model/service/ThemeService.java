package minibbs.model.service;

import java.util.List;

import minibbs.model.entity.Theme;

public interface ThemeService{
	
	public List<Theme> getAllThemes();
	public List<Theme> getAllThemes(String cond);
	public void createTheme(Theme theme);
	public Theme getThemeById(long id);
}
