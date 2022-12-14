package com.oracle.ohTravel.airport.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oracle.ohTravel.airport.model.AirSearch;
import com.oracle.ohTravel.airport.model.Air_FlightSchDTO;
import com.oracle.ohTravel.airport.model.Air_ReservationDTO;
import com.oracle.ohTravel.airport.model.Air_Reservation_PiDTO;
import com.oracle.ohTravel.airport.model.Air_ScheduleDTO;
import com.oracle.ohTravel.airport.model.Reservation_Seat;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ScheduleDAOImpl implements ScheduleDAO {
	
	private final SqlSession session;
	private String namespace = "com.oracle.ohTravel.AirportMapper.";

	@Override
	public List<Air_ScheduleDTO> airplaneList(AirSearch airSearch) {
		System.out.println("ScheduleDAOImpl airSeach="+airSearch);
		List<Air_ScheduleDTO> list1 = null;
		try {
			list1 = session.selectList(namespace + "airplaneList", airSearch);
			System.out.println("ScheduleDAOImpl airplaneList list1=" + list1);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list1;
	}

	@Override
	public List<Air_ScheduleDTO> round_airplaneList(AirSearch airSearch) {
		
		
		List<Air_ScheduleDTO> list2 = null;
		try {
			
			list2 = session.selectList(namespace + "round_airplaneList", airSearch);
			System.out.println("ScheduleDAOImpl airplaneList list2=" + list2);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list2;
	}

	@Override
	public List<Air_ScheduleDTO> round_GoairplaneList(AirSearch airSearch) {
		List<Air_ScheduleDTO> list3 = null;
		try {
			
			list3 = session.selectList(namespace + "round_goairplaneList", airSearch);
			System.out.println("ScheduleDAOImpl airplaneList list3=" + list3);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list3;
	}

	@Override
	public Air_ScheduleDTO GoairplaneList(Integer go_schedule_id) {
		Air_ScheduleDTO GoairScheduleDTO = null;
		try {
			
			GoairScheduleDTO = session.selectOne(namespace + "goAirplane", go_schedule_id);
			System.out.println("ScheduleDAOImpl airplaneList list3=" + GoairScheduleDTO);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return GoairScheduleDTO;
	}

	@Override
	public Air_ScheduleDTO ComeairplaneList(Integer come_schedule_id) {
		Air_ScheduleDTO ComeairScheduleDTO = null;
		try {
			
			ComeairScheduleDTO = session.selectOne(namespace + "comeAirplane",come_schedule_id);
			System.out.println("ScheduleDAOImpl airplaneList list3=" + ComeairScheduleDTO);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ComeairScheduleDTO;
	}

	@Override
	public int ReservationList(Air_ReservationDTO air_ReservationDTO) {
		int ReservationCnt = 0;
		try {
			
			ReservationCnt = session.insert(namespace + "ReservationList", air_ReservationDTO);
			System.out.println("ScheduleDAOImpl  ReservationCnt=" + ReservationCnt);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ReservationCnt;
	}
	
	@Override
	public Air_ReservationDTO selectReservationList(String mem_id) {
		
		Air_ReservationDTO reservationList = null;
		try {
			
			reservationList = session.selectOne(namespace + "ReservationListSelect", mem_id);
			System.out.println("ScheduleDAOImpl  reservationList=" + reservationList);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reservationList;
	}

	@Override
	public int pplList(Map<String,Object> map)throws Exception {
		int pplCnt = 0;
	
			
			pplCnt = session.insert(namespace + "peoplelList", map);
			System.out.println("ScheduleDAOImpl pplCnt=" + pplCnt);
		
	
			return pplCnt;
	}

	@Override
	public int goflightList(Map<String,Object> map)throws Exception {
		int goflightCnt = 0;
	
			
			goflightCnt = session.insert(namespace + "goflightList", map);
			System.out.println("ScheduleDAOImpl flightCnt=" + goflightCnt);
		
	
			return goflightCnt;
	}
	
	@Override
	public int comeflightList(Map<String,Object> map)throws Exception {
		int comeflightCnt = 0;
		
			comeflightCnt = session.insert(namespace + "comeflightList", map);
			System.out.println("ScheduleDAOImpl flightCnt=" + comeflightCnt);
	
			return comeflightCnt;
	}

	@Override
	public int goSeatList(Map<String,Object> map)throws Exception{
		int seatCnt=0;
		
		
			seatCnt = session.insert(namespace + "goSeatList",  map);
			System.out.println("ScheduleDAOImpl seatCnt=" + seatCnt);
		
			return seatCnt;
	}
	
	@Override
	public int comeSeatList(Map<String,Object> map) throws Exception{
		int seatCnt=0;
		
		
			seatCnt = session.insert(namespace + "comeSeatList",map);
			System.out.println("ScheduleDAOImpl seatCnt=" + seatCnt);
		
		
			return seatCnt;
	}

	@Override
	public int paymentList(Map<String, Object> map) throws Exception {
		int paymentCnt = 0;
		
			paymentCnt = session.insert(namespace + "paymentList",map);
			System.out.println("ScheduleDAOImpl paymentCnt=" + paymentCnt);
		
			return paymentCnt;
	}

	@Override
	public int goflightListCalc(Map<String, Object> map) throws Exception {
		int goflightListCalc = 0;
		
			goflightListCalc = session.insert(namespace + "goflightCalc",map);
			System.out.println("ScheduleDAOImpl paymentCnt=" + goflightListCalc);
		
			return goflightListCalc;
	}

	@Override
	public int comeflightListCalc(Map<String, Object> map) throws Exception {
		int comeflightListCalc = 0;
		
			comeflightListCalc = session.insert(namespace + "comeflightCalc",map);
			System.out.println("ScheduleDAOImpl paymentCnt=" + comeflightListCalc);
		
			return comeflightListCalc;
	}

	@Override
	public Air_ReservationDTO selectReservationDetail(Integer reservation_id) {
		
		Air_ReservationDTO air_ReservationDTO = session.selectOne(namespace+"reservationDetails",reservation_id);
		System.out.println("ScheduleDAOImpl selectReservationDetail air_ReservationDTO" + air_ReservationDTO);
		
		return air_ReservationDTO;
	}

	@Override
	public List<Air_Reservation_PiDTO> selectReservationPPl(Integer reservation_id) {
		 List<Air_Reservation_PiDTO> air_Reservation_PiList = session.selectList(namespace+"air_Reservation_PiList",reservation_id);
		
		return air_Reservation_PiList;
	}

	@Override
	public List<Air_Reservation_PiDTO> selectReservationPPl(Air_Reservation_PiDTO air_Reservation_PiDTO) {
		 List<Air_Reservation_PiDTO> air_Reservation_PiList2 = session.selectList(namespace+"air_Reservation_PiList_Modify",air_Reservation_PiDTO);
			
			return air_Reservation_PiList2;
	}

	

}
