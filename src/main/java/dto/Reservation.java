package dto;

import java.sql.Date;

public class Reservation {
	private String id;
	private String userId;
	private String sitterId;
	private String startDate;
	private String endDate;
	private Date registerDate;
	private String content;
	
	public Reservation() {
		// TODO Auto-generated constructor stub
	}

	public Reservation(String id, String userId, String sitterId, String startDate, String endDate, Date registerDate,
			String content) {
		super();
		this.id = id;
		this.userId = userId;
		this.sitterId = sitterId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.registerDate = registerDate;
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSitterId() {
		return sitterId;
	}

	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
