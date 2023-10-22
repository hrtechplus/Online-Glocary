package com.sliit.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection con = connectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from users where email='" + email + "' and password='" + password + "'");

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("home.jsp");
            } else {
                response.sendRedirect("login.jsp?msg=notexist");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?msg=invalid");
        }
    }
}
