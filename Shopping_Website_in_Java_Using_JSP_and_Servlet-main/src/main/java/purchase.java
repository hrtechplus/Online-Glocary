//package classes;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

// 
// Decompiled by Procyon v0.5.36
// 

public class purchase extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        final PrintWriter out = response.getWriter();
        final ArrayList newlist = new ArrayList();
        final int newval = 0;
        final HttpSession mysession = request.getSession();
        mysession.setAttribute("purch", (Object)"true");
        mysession.setAttribute("itemlist", (Object)newlist);
        mysession.setAttribute("total", (Object)newval);
        response.sendRedirect("success.jsp");
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