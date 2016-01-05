package com.xinxin.dao;

import com.xinxin.model.JobInfo;

public interface JobInfoDao {

	public boolean add(JobInfo jobInfo);

	public boolean remove(JobInfo jobInfo);

	public JobInfo query(JobInfo jobInfo);

	public boolean modify(JobInfo jobInfo);
}
