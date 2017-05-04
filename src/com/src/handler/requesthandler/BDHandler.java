package com.src.handler.requesthandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.src.entity.BusinessDevelopers;
import com.src.handler.dbhandler.DBUtil;


/**
 * Servlet implementation class BDHandler
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/BDHandler" })
public class BDHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BDHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city = request.getParameter("city").toLowerCase();
		
		DBUtil dbUtil = new DBUtil();
		
		List<BusinessDevelopers> listOfBDs = dbUtil.getBDsCitywise(city);
		
		
		
        //writing data to json
        response.setContentType("application/json;charset=utf-8");

        JSONArray jsonArr = new JSONArray(Arrays.asList(listOfBDs));
        
        PrintWriter pw = response.getWriter(); 
        pw.print(jsonArr.toString());
        pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	
}
