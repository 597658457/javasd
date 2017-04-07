package com.newoa.service;

import java.util.List;

import com.newoa.pojo.Holiday;

public interface HolidayService {

	public List<Holiday> findHoliday(Holiday ho);
	public void applyHoliday(Holiday ho);
	public void agreeCheck(Holiday ho);
	public void disagreeCheck(Holiday ho);
}
