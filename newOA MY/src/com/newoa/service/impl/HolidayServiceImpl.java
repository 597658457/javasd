package com.newoa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newoa.mapper.HolidayMapper;
import com.newoa.pojo.Holiday;
import com.newoa.service.HolidayService;
@Service
@Transactional
public class HolidayServiceImpl implements HolidayService {
	@Autowired
	public HolidayMapper hp;
	@Override
	public void agreeCheck(Holiday ho) {
		// TODO Auto-generated method stub
		hp.agreeCheck(ho);
	}

	@Override
	public void applyHoliday(Holiday ho) {
		// TODO Auto-generated method stub
		hp.applyHoliday(ho);
	}

	@Override
	public void disagreeCheck(Holiday ho) {
		// TODO Auto-generated method stub
		hp.disagreeCheck(ho);
	}

	@Override
	public List<Holiday> findHoliday(Holiday ho) {
		// TODO Auto-generated method stub
		return hp.findHoliday(ho);
	}

	public HolidayMapper getHp() {
		return hp;
	}

	public void setHp(HolidayMapper hp) {
		this.hp = hp;
	}

}