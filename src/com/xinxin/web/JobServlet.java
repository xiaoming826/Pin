package com.xinxin.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xinxin.dao.impl.CompanyDaoImpl;
import com.xinxin.dao.impl.JobInfoDaoImpl;
import com.xinxin.model.Company;
import com.xinxin.model.JobInfo;
import com.xinxin.model.User;

/**
 * Servlet implementation class JobServlet
 */
public class JobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if("query".equals(action)){
			query(request,response);
		}else if ("show".equals(action)){
			show(request,response);
		}else if("apply".equals(action)){
			apply(request,response);
		}
		
//		List<JobInfo> jobs = new JobInfoDaoImpl().getAll();
//		for (int i = 0; i < jobs.size(); i++) {
//			JobInfo job = jobs.get(i);
//		}
	}

	private void apply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jobid = request.getParameter("id");
		User user = (User) request.getSession().getAttribute("currentUser");
		if(user==null){
//			throw new ServletException("未登录");
			response.sendRedirect("login.html");
			return;
		}
		String userid = user.getId()+"";
		boolean apply = new JobInfoDaoImpl().apply(jobid,userid);
		show(request, response);
		
	}

	private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		JobInfo jobinfo = new JobInfoDaoImpl().queryById(id);
		Company company = new CompanyDaoImpl().queryById(jobinfo.getCid());
		request.setAttribute("jobinfo", jobinfo);
		request.setAttribute("company", company);
		request.getRequestDispatcher("jobdetail.jsp").forward(request, response);
		
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String word = request.getParameter("word");
		word = new String(word.getBytes("ISO-8859-1"),"UTF-8");
		List<JobInfo> query = new JobInfoDaoImpl().query(word);
		System.out.println(query.size());
		request.setAttribute("jobList", query);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
