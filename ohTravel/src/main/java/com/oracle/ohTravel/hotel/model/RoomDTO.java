package com.oracle.ohTravel.hotel.model;

import java.util.Date;

import lombok.Data;

@Data
public class RoomDTO {
	
	private int room_id;
	private String hotel_id;
	private String room_type;
	private int room_per;
	private String room_name;
	private String startDate;
	private String endDate;
	private int calDate;
	private int canRevDateCnt;
	
	private String r_img_path;
	
	private String hotel_kor;
	private String hotel_eng;
	
	private int room_detail_id;
	private Date room_date;
	private int room_price;
	private String room_rev;
	
	private double numberOfPeople;
	private int numberOfChild;
	private int numberOfAdult;
	
	//멤버십 관련
	private String mem_id;
	private int membership_id;
	private String membership_name;
	private int mem_mile;
	private int membership_discount;
	
}
