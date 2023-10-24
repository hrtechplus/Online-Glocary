package com.admin;

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

import com.admin.*;


@WebServlet("/showItems")
public class showItems extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public showItems() {
        super();
      
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		  final String DB_URL = "jdbc:mysql://localhost:3306/sliit";
		  final String USER = "root";
		  final String PASS = "root";
		  ArrayList<Products> detailsProduct = new ArrayList<>();
		  ArrayList<String> sds = new ArrayList<>();
		  


      try {
          Class.forName(JDBC_DRIVER);
          Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
          Statement stmt = conn.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM product");

          while (rs.next()) {
              String id = Integer.toString(rs.getInt("id"));
              String name = rs.getString("name");
              String catagory = rs.getString("catagory");
              String price =Integer.toString(rs.getInt("price"));
              String active = rs.getString("active");

              Products productobj = new Products(id, name,catagory, price, active);
              detailsProduct.add(productobj);
              sds.add(productobj.getId());
              sds.add(productobj.getName());
              sds.add(productobj.getPrice());
              sds.add(productobj.getCatagory());
              sds.add(productobj.getActive());
          }
          
          System.out.println(detailsProduct);
          System.out.println(sds);

          request.setAttribute("productlist", sds);
          request.getRequestDispatcher("productlist.jsp").forward(request, response);

          rs.close();
          stmt.close();
          conn.close();
      } catch (Exception e) {
          e.printStackTrace();
      }

}
