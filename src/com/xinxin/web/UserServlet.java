package com.xinxin.web;

import java.beans.Encoder;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xinxin.dao.impl.UserDaoImpl;
import com.xinxin.model.User;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
		if("login".equals(action)){
			login(request,response);
		}else if ("logout".equals(action)){
			logout(request,response);
		}else if("register".equals(action)){
			register(request,response);
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		User user=new User();
		user.setName(name);
		user.setPwd(pwd);
		System.out.println(user);
		boolean result = new UserDaoImpl().add(user);
		if(result){
			request.getSession().setAttribute("currentUser", user);
			response.getWriter().append("ok");
		}else{
			response.getWriter().append("用户名已存在");
		}
		
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().setAttribute("currentUser", null);
		response.sendRedirect("index.jsp");
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		User user=new User();
		user.setName(name);
		user.setPwd(pwd);
//		System.out.println(user);
		User login = new UserDaoImpl().login(user);
		if(login!=null){
			request.getSession().setAttribute("currentUser", login);
			response.getWriter().append("ok");
		}else{
			response.getWriter().append("用户名或密码错误");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
