package minibbs.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import minibbs.model.entity.Post;
import minibbs.model.entity.Reply;
import minibbs.model.entity.User;

public class BaseAction<TEntity, TService> extends ActionSupport implements ModelDriven<TEntity> {
	
	private static final long serialVersionUID = 1L;
	
	private TService service;
	private TEntity model;
	protected String errorMessage;

	@Override
	public TEntity getModel() {
		return model;
	}
	
	public void setModel(TEntity model) {
		this.model = model;
	}

	protected TService getService() {
		return service;
	}

	public void setService(TService service) {
		this.service = service;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

//	public Post getTempPost() {
//		return tempPost;
//	}
//
//	public void setTempPost(Post tempPost) {
//		this.tempPost = tempPost;
//	}

}
