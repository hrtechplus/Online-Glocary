<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>

<%

String id=request.getParameter("id");
id = id.trim();
int idInt = Integer.parseInt(id);

String active=request.getParameter("active");
try{
	Connection con=connectionProvider.getcon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from product WHERE id=" + idInt);
	response.sendRedirect("allProductEditProduct.jsp?msg=done");

}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}

%>