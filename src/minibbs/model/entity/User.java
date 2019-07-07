package minibbs.model.entity;

public class User extends BaseEntity{
	private String nickname;
	private String password;
	private String email;
	private String repeatpw;
	private int salt;
	
	public User() {
		super(0);
	}
	
	public User(String nickname,String email,String password,String repeatpw) {
		this();
		this.nickname=nickname;
		this.email=email;
		this.password=password;
		this.repeatpw=repeatpw;
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getRepeatpw() {
		return repeatpw;
	}


	public void setRepeatpw(String repeatpw) {
		this.repeatpw = repeatpw;
	}

	public int getSalt() {
		return salt;
	}

	public void setSalt(int salt) {
		this.salt = salt;
	}

}
