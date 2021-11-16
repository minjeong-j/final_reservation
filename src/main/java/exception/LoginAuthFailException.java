package exception;

public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private String member;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}
	
	public LoginAuthFailException(String message, String member) {
		super(message);
		this.member=member;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}
}
