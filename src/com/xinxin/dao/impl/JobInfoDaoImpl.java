package com.xinxin.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.xinxin.dao.JobInfoDao;
import com.xinxin.model.JobInfo;
import com.xinxin.util.DbUtil;

public class JobInfoDaoImpl implements JobInfoDao{

	public boolean add(JobInfo jobInfo) {
		Connection conn = DbUtil.getConn();
		String sql="insert into jobinfo (title,content,dateTime,money,experience,cid) values (?,?,?,?,?,?);";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, jobInfo.getTitle());
			ps.setString(2, jobInfo.getContent());
			ps.setString(3, jobInfo.getDateTime());
			ps.setString(4, jobInfo.getMoney());
			ps.setString(5, jobInfo.getExperience());
			ps.setString(6, jobInfo.getCid());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean remove(JobInfo jobInfo) {
		Connection conn = DbUtil.getConn();
		String sql="delete from jobinfo where id = ?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, jobInfo.getId());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public JobInfo queryById(String id) {
		Connection conn = DbUtil.getConn();
		String sql="select * from jobinfo where id = ?";
		JobInfo job=null;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				job = new JobInfo();
				job.setId(rs.getString("id"));
				job.setTitle(rs.getString("title"));
				job.setContent(rs.getString("content"));
				job.setDateTime(rs.getString("dateTime"));
				job.setMoney(rs.getString("money"));
				job.setCid(rs.getString("cid"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return job;
	}
	
	public List<JobInfo> query(String info) {
		Connection conn = DbUtil.getConn();
		String sql="select * from jobinfo where title like '%"+info+"%' or content like '%"+info+"%';";
		List<JobInfo> jobs;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			jobs = new ArrayList<JobInfo>();
			while(rs.next()) {
				JobInfo job = new JobInfo();
				job.setId(rs.getString("id"));
				job.setTitle(rs.getString("title"));
				job.setContent(rs.getString("content"));
				job.setDateTime(rs.getString("dateTime"));
				job.setMoney(rs.getString("money"));
				job.setCid(rs.getString("cid"));
				jobs.add(job );
			}
		} catch (Exception e) {
			e.printStackTrace();
			jobs= new ArrayList<JobInfo>();
		}
		return jobs;
	}

	public boolean modify(JobInfo jobInfo) {
		Connection conn = DbUtil.getConn();
		String sql="update jobinfo set title = ?,content = ?, dateTime = ?,money = ?,cid =?, experience =?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, jobInfo.getTitle());
			ps.setString(2, jobInfo.getContent());
			ps.setString(3, jobInfo.getDateTime());
			ps.setString(4, jobInfo.getMoney());
			ps.setString(5, jobInfo.getCid());
			ps.setString(6, jobInfo.getExperience());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbUtil.closeConn();
		return false;
	}

	public List<JobInfo> getAll()  {
		Connection conn = DbUtil.getConn();
		String sql="select * from jobinfo ";
		List<JobInfo> jobs;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			jobs = new ArrayList<JobInfo>();
			while(rs.next()) {
				JobInfo job = new JobInfo();
				job.setId(rs.getString("id"));
				job.setTitle(rs.getString("title"));
				job.setContent(rs.getString("content"));
				job.setDateTime(rs.getString("dateTime"));
				job.setMoney(rs.getString("money"));
				job.setCid(rs.getString("cid"));
				jobs.add(job );
			}
		} catch (SQLException e) {
			jobs= new ArrayList<JobInfo>();
			e.printStackTrace();
		}
		DbUtil.closeConn();
		return jobs;
	}

	public boolean apply(String jobid, String userid) {
		Connection conn = DbUtil.getConn();
		String sql="insert into jobapply (jobid,userid) values (?,?) ;";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, jobid);
			ps.setString(2, userid);
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}
	

	public boolean isApply(String jobid, String userid) {
		Connection conn = DbUtil.getConn();
		String sql="select * from jobapply where jobid= ? and userid=?;";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, jobid);
			ps.setString(2, userid);
			ResultSet rs=ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}

}
