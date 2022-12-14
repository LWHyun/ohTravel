package com.oracle.ohTravel.search.model;

import java.util.List;

import com.oracle.ohTravel.hotel.model.HotelDTO;
import com.oracle.ohTravel.pkage.model.PkageDTO;
import com.oracle.ohTravel.search.service.Paging;
import com.oracle.ohTravel.ticket.model.TicketDTO;

import lombok.Data;

@Data
public class CategoryDTOVO {
	private List<PkageDTO> pkageList;
	private List<HotelDTO> hotelList;
	private List<TicketDTO> ticketList;
	private PkageDTO pkageDTO;
	private HotelDTO hotelDTO;
	private TicketDTO ticketDTO;
	private int totalPkage;
	private int totalHotel;
	private int totalTicket;
	private Paging paging;
	private String search_word;
	private String pkage_id;
	private String basket_ref_id;
	
	private String pageNum;
	private int start;
	private int end;
	private int min_price;
	private String check;
	private String mem_id;
	private int chk;
	private int review_cnt;
	private String radioCheck;
}
