package co.mini.vo;

public class BoardVO {
	private String no;
	private String category;
	private String title;
	private String content;
	private String id;
	private String show;
	private String answer;

	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", category=" + category + ", title=" + title + ", content=" + content + ", id="
				+ id + ", show=" + show + ", answer=" + answer + "]";
	}

	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
