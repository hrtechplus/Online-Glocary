<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>

<%

String id=request.getParameter("id");
id = id.trim();
int idInt = Integer.parseInt(id);
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try{
	Connection con=connectionProvider.getcon();
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',catagory='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'");
	if(active.equals("No")){
		
		st.executeUpdate("delete from card where  where id="+idInt+"");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");

}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}

%>