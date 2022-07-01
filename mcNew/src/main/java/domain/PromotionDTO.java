package domain;

public class PromotionDTO {
	
	private String p_title;
	private String IMGVD_PATH;
	private String p_code;
	
	public PromotionDTO() {
		super();
		
	}


	public PromotionDTO(String p_title, String iMGVD_PATH, String p_code) {
		super();
		this.p_title = p_title;
		IMGVD_PATH = iMGVD_PATH;
		this.p_code = p_code;
	}
	
	
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getIMGVD_PATH() {
		return IMGVD_PATH;
	}
	public void setIMGVD_PATH(String iMGVD_PATH) {
		IMGVD_PATH = iMGVD_PATH;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	

}
