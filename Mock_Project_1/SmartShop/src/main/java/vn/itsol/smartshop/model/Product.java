package vn.itsol.smartshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "productid")
	private int productid;
	@Column(name = "productnumber")
	private String productnumber;
	@Column(name = "productname")
	private String productname;
	@Column(name = "categoryid")
	private int categoryid;
	@Column(name = "price")
	private int price;
	@Column(name = "color")
	private String color;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "image", nullable = true)
	private String image;
	@Column(name = "status")
	private int status;
	@Column(name = "sellstartdate")
	private String sellstartdate;
	@Column(name = "sellenddate")
	private String sellenddate;
	@Column(name = "modifieddate")
	private String modifieddate;

	public Product() {
		super();
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductnumber() {
		return productnumber;
	}

	public void setProductnumber(String productnumber) {
		this.productnumber = productnumber;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSellstartdate() {
		return sellstartdate;
	}

	public void setSellstartdate(String sellstartdate) {
		this.sellstartdate = sellstartdate;
	}

	public String getSellenddate() {
		return sellenddate;
	}

	public void setSellenddate(String sellenddate) {
		this.sellenddate = sellenddate;
	}

	public String getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(String modifieddate) {
		this.modifieddate = modifieddate;
	}

}
