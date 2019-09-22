package cz.zl.bd.pojo;
import java.text.SimpleDateFormat;
import java.util.Date;
public class tuibaoinfo{
	private int insurance_id;
	private int user_id;
	private int produce_id;
	private int toubao_person;
	private int beibao_person;
	private String style;
	private int price;
	private String border;
	private Date start_date;
	private Date end_date;
	private String status;
	public int getInsurance_id() {
		return insurance_id;
	}
	public void setInsurance_id(int insurance_id) {
		this.insurance_id = insurance_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getProduce_id() {
		return produce_id;
	}
	public void setProduce_id(int produce_id) {
		this.produce_id = produce_id;
	}
	public int getToubao_person() {
		return toubao_person;
	}
	public void setToubao_person(int toubao_person) {
		this.toubao_person = toubao_person;
	}
	public int getBeibao_person() {
		return beibao_person;
	}
	public void setBeibao_person(int beibao_person) {
		this.beibao_person = beibao_person;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBorder() {
		return border;
	}
	public void setBorder(String border) {
		this.border = border;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public String getStart_date() {
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyy-MM-dd HH:mm:s");
		String startdate = formatter1.format(start_date);
		return startdate;
	}
	public String getEnd_date() {
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyy-MM-dd HH:mm:s");
		String EndDate= formatter2.format(end_date);
		return EndDate;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "tuibaoinfo [insurance_id=" + insurance_id + ", user_id=" + user_id + ", produce_id=" + produce_id
				+ ", toubao_person=" + toubao_person + ", beibao_person=" + beibao_person + ", style=" + style
				+ ", price=" + price + ", border=" + border + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", status=" + status + "]";
	}
}	


















