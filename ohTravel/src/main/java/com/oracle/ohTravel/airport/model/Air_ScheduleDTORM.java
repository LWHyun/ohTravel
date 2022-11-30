package com.oracle.ohTravel.airport.model;

import java.util.Date;

import lombok.Data;

@Data
public class Air_ScheduleDTORM {
	private Integer schedule_id;		// 일정 ID
	private Integer air_num;			// 항공사번호
	private String start_airport_name;	// 출발공항명
	private String end_airport_name;	// 도착공항명
	private Date start_time;			// 출발 시간
	private Date end_time;				// 도착 시간
	private Integer schedule_price;		// 가격
	
	// 항공사
	private AirlineDTO airlineDTO; 
}
