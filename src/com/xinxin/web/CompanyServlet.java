package com.xinxin.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xinxin.dao.impl.CompanyDaoImpl;
import com.xinxin.model.Company;

/**
 * Servlet implementation class CompanyServlet
 */
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if("register".equals(action)){
			register(request,response);
		}else if("query".equals(action)){
			query(request,response);
		}
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String word = request.getParameter("word");
		List<Company> list = new CompanyDaoImpl().query(word);
		request.setAttribute("companyList", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		Company company=new Company();
		company.setName(name);
		company.setPwd(pwd);
		System.out.println(company);
		boolean result = new CompanyDaoImpl().add(company);
		if(result){
			request.getSession().setAttribute("currentUser", company);
			response.getWriter().append("ok");
		}else{
			response.getWriter().append("用户名已存在");
		}
		
	}

}
