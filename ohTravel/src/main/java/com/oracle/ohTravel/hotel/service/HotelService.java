package com.oracle.ohTravel.hotel.service;

import java.util.List;

import com.oracle.ohTravel.basket.model.BasketDTO;
import com.oracle.ohTravel.hotel.model.HotelDTO;
import com.oracle.ohTravel.hotel.model.HotelReservationDTO;
import com.oracle.ohTravel.hotel.model.Hotel_imageDTO;
import com.oracle.ohTravel.hotel.model.RoomDTO;

public interface HotelService {

	List<HotelDTO> hotelList(HotelDTO hoteldto);

	HotelDTO getHotelDetail(HotelDTO hotelDTO);

	List<RoomDTO> getRoomList(RoomDTO roomDTO);

	RoomDTO getRoomDetail(RoomDTO roomDTO);

	String reserveHotel(HotelReservationDTO hotelRDTO);

	RoomDTO getMembershipInfo(RoomDTO roomDTO);

	String heartBasket(HotelDTO hotelDTO);

	List<HotelDTO> getHotelSearchResult(HotelDTO hotelDTO);

	List<HotelDTO> getHotelDetailOptions(HotelDTO hotelDTO);

	List<HotelDTO> getHotelRecList(HotelDTO hotelDTO);



}
