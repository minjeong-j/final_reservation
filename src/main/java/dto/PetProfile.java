package dto;

public class PetProfile {
	private String id;
	private String userId;
	private String name;
	private int age;
	private String kind;
	private int weight;
	private String sex;
	private String img;
	private String content;
	
	public PetProfile() {
		// TODO Auto-generated constructor stub
	}

	public PetProfile(String id, String userId, String name, int age, String kind, int weight, String sex, String img,
			String content) {
		super();
		this.id = id;
		this.userId = userId;
		this.name = name;
		this.age = age;
		this.kind = kind;
		this.weight = weight;
		this.sex = sex;
		this.img = img;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
