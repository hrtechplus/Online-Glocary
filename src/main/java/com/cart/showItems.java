package com.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sliit.login.Product;


@WebServlet("/showItems")
public class showItems extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public showItems() {
        super();
      
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  List<Product> studentList = new ArrayList<>();
		  final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		  final String DB_URL = "jdbc:mysql://localhost:3306/sliit";
		  final String USER = "root";
		  final String PASS = "root";

	        try {
	            Class.forName(JDBC_DRIVER);
	            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	            Statement stmt = conn.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM student");

	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String name = rs.getString("name");
	                String catagory = rs.getString("catagory");
	                int price = rs.getInt("price");
	                String active = rs.getString("price");

	                Product student = new Product(id, name,catagory, price, active);
	                studentList.add(student);
	            }

	            request.setAttribute("studentList", studentList);
	            request.getRequestDispatcher("studentList.jsp").forward(request, response);

	            rs.close();
	            stmt.close();
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}

}
