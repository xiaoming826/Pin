package com.xinxin.dao;

import java.util.List;

import com.xinxin.model.JobInfo;

public interface JobInfoDao {

	public boolean add(JobInfo jobInfo);

	public boolean remove(JobInfo jobInfo);

	public JobInfo queryById(String id);
	
	public List<JobInfo> query(String info);

	public boolean modify(JobInfo jobInfo);
	
	public List<JobInfo> getAll() ;
}
