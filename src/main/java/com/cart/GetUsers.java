package com.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/GetUsers")
public class GetUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetUsers() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		  final String DB_URL = "jdbc:mysql://localhost:3306/sliit";
		  final String USER = "root";
		  final String PASS = "root";
		  ArrayList<Products> detailsProduct = new ArrayList<>();

        try {
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM product");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String catagory = rs.getString("catagory");
                int price = rs.getInt("price");
                String active = rs.getString("price");

                Products productobj = new Products(id, name,catagory, price, active);
                detailsProduct.add(productobj);
            }

            request.setAttribute("productlist", detailsProduct);
            request.getRequestDispatcher("productlist.jsp").forward(request, response);

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
}

	}


