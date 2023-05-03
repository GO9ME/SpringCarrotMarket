package com.market.carrot.dto;

public class FileDTO {
	private int items_id;
	private String originalFilename;
	private String storeFilename;
	private String imageFileno;

	public FileDTO() {
		super();
	}

	public FileDTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}

	public FileDTO(int items_id, String originalFilename, String storeFilename, String imageFileno) {
		super();
		this.items_id = items_id;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.imageFileno = imageFileno;
	}

	@Override
	public String toString() {
		return "FileDTO [items_id=" + items_id + ", originalFilename=" + originalFilename + ", storeFilename="
				+ storeFilename + ", imageFileno=" + imageFileno + "]";
	}

	public int getItems_id() {
		return items_id;
	}

	public void setItems_id(int items_id) {
		this.items_id = items_id;
	}

	public String getOriginalFilename() {
		return originalFilename;
	}

	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}

	public String getStoreFilename() {
		return storeFilename;
	}

	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}

	public String getImageFileno() {
		return imageFileno;
	}

	public void setImageFileno(String imageFileno) {
		this.imageFileno = imageFileno;
	}
	
}
