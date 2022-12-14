package com.oracle.ohTravel.pkage.dao;

import java.util.List;
import java.util.Map;

import com.oracle.ohTravel.pkage.model.PkageDTO;
import com.oracle.ohTravel.pkage.model.PkageDTORM;
import com.oracle.ohTravel.pkage.model.Pkage_detailDTO;
import com.oracle.ohTravel.pkage.model.Pkage_rsDTO;
import com.oracle.ohTravel.pkage.model.Pkage_rs_piDTO;

public interface PkageDao {
	List<PkageDTO> selectPkgBySoldScoreOrder(Map<String, Integer> map) throws Exception;
	List<PkageDTO> selectPkgByThemaSoldScoreOrder(Map<String, Object> map) throws Exception;
	List<PkageDTORM> selectPkgWithDetailAndFlight(Map<String, Object> map) throws Exception;
	int selectPkgWithDetailAndFlightCnt(Map<String, Object> map) throws Exception;
	PkageDTORM selectPkgByPkgId(String pkage_id) throws Exception;
	Pkage_detailDTO selectPkgDetailById(Integer pkage_dt_id) throws Exception;
	Pkage_detailDTO selectPkgDetailById2(Integer pkage_dt_id) throws Exception;
	Pkage_detailDTO selectPkgDetailById3(Integer pkage_dt_id) throws Exception;
	Integer selectPkgDetailReservCheck(Map<String, Object> map) throws Exception;
	int insertPkgReserve(Pkage_rsDTO pkage_rsDTO) throws Exception;
	int selectPkgRvIdByMemId(String mem_id) throws Exception;
	int insertPkgReservePies(Map<String, List<Pkage_rs_piDTO>> map) throws Exception;
	int updatePkgSoldCnt(String pkage_id) throws Exception;
	int updatePkgDetailRcnt(Map<String, Object> map) throws Exception;
	int insertPayment(Map<String, Object> map) throws Exception;
	Pkage_rsDTO selectPkgReservById(Integer pkage_rv_id) throws Exception;
	List<Pkage_rsDTO> selectPkgReservByMem_id(String mem_id) throws Exception;
	int insertBasket(Map<String, String> map) throws Exception;
	int deleteBasket(Map<String, String> map) throws Exception;
}
