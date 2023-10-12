//package classes;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import classes.Item;
import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

// 
// Decompiled by Procyon v0.5.36
// 

public class requesthandle extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        final PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        final HttpSession mysession = request.getSession();
        final ArrayList mycart = (ArrayList)mysession.getAttribute("itemlist");
        int value = (int)mysession.getAttribute("total");
        final String i1 = request.getParameter("addtocart1");
        final String i2 = request.getParameter("addtocart2");
        final String i3 = request.getParameter("addtocart3");
        final String i4 = request.getParameter("addtocart4");
        final String chk = request.getParameter("chkout");
        final String logout = request.getParameter("logout");
        final String pressdel = request.getParameter("del");
        if (i1 != null) {
            final Item myitem = new Item("#1", "Sunglass", 34);
            value += 34;
            mycart.add(myitem);
            mysession.setAttribute("itemlist", (Object)mycart);
            mysession.setAttribute("total", (Object)value);
            response.sendRedirect("shop.jsp");
        }
        else if (i2 != null) {
            final Item myitem = new Item("#2", "Wrist Watch", 66);
            value += 66;
            mycart.add(myitem);
            mysession.setAttribute("itemlist", (Object)mycart);
            mysession.setAttribute("total", (Object)value);
            response.sendRedirect("shop.jsp");
        }
        else if (i3 != null) {
            final Item myitem = new Item("#3", "Camera", 167);
            value += 167;
            mycart.add(myitem);
            mysession.setAttribute("itemlist", (Object)mycart);
            mysession.setAttribute("total", (Object)value);
            response.sendRedirect("shop.jsp");
        }
        else if (i4 != null) {
            final Item myitem = new Item("#4", "Shoes", 23);
            value += 23;
            mycart.add(myitem);
            mysession.setAttribute("itemlist", (Object)mycart);
            mysession.setAttribute("total", (Object)value);
            response.sendRedirect("shop.jsp");
        }
        else if (chk != null) {
            mysession.setAttribute("chk", (Object)chk);
            response.sendRedirect("checkout.jsp");
        }
        else if (logout != null) {
            mysession.invalidate();
            response.sendRedirect("index.jsp");
        }
        else if (pressdel != null) {
            final Item item_to_Delete = (Item) mycart.get(Integer.parseInt(pressdel));
            value -= item_to_Delete.price;
            mysession.setAttribute("total", (Object)value);
            mycart.remove(Integer.parseInt(pressdel));
            mysession.setAttribute("tod", (Object)pressdel);
            response.sendRedirect("shop.jsp");
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