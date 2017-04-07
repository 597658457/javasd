package com.newoa.mapper;

import java.util.List;

import com.newoa.pojo.Holiday;

public interface HolidayMapper {
	public List<Holiday> findHoliday(Holiday ho);
	public void applyHoliday(Holiday ho);
	public void agreeCheck(Holiday ho);
	public void disagreeCheck(Holiday ho);
}
