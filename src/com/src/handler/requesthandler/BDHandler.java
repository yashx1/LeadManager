package com.src.handler.requesthandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String city = request.getParameter("city");
		
		DBUtil dbUtil = new DBUtil();
		
		List<BusinessDevelopers> listOfBDs = dbUtil.getBDsCitywise(city);
		
		System.out.println(listOfBDs.get(0).getEmail());

		
//		int [] sampleData = null;
//        //sampleData= here you can get data from database
//
//        //writing data to json
//        response.setContentType("application/json;charset=utf-8");
//
//        JSONObject json = new JSONObject();
//        JSONArray array = new JSONArray();
//        JSONObject member =  new JSONObject();
//
//        member.put("arrayData", sampleData);
//        array.add(member);
//
//        json.put("jsonArray", array);
//
//        PrintWriter pw = response.getWriter(); 
//        pw.print(json.toString());
//        pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
