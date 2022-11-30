package com.oracle.ohTravel.pkage.model;

import java.util.Date;

import lombok.Data;

@Data
public class PkageDTO {
	private String pkage_id;
	private Integer city_id;
	private String pkage_name;
	private String pkage_info;
	private Integer pkage_gubun;
	private Integer pkage_soldCnt;
	private double pkage_score;

	
//	package_detail 
	private Integer pkage_dt_Aprice;
	private Integer pkage_dt_Cprice;
	
//	pakcage_image
	private String pkage_Img_path;
	
	private String pageNum;
	private int start;
	private int end;
	private String search_word;
	private int min_price;
	private String check;
}
