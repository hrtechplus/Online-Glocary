//package classes;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

// 
// Decompiled by Procyon v0.5.36
// 

public class loginval extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final String username = request.getParameter("uname");
        final String password = request.getParameter("pass");
        if (password.equals("1234")) {
            final ArrayList cart = new ArrayList();
            final int totalcost = 0;
            final HttpSession mysession = request.getSession();
            mysession.setAttribute("user", (Object)username);
            mysession.setAttribute("itemlist", (Object)cart);
            mysession.setAttribute("total", (Object)totalcost);
            response.sendRedirect("shop.jsp");
        }
        else {
            response.sendRedirect("error.jsp");
        }
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }
    
    public String getServletInfo() {
        return "Short description";
    }
}