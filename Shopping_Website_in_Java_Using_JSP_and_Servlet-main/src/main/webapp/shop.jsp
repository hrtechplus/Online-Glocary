



<%@page import="java.util.ArrayList"%>
<%@ page import="classes.Item" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%
            String user = (String) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title>Shopping Cart - Shop</title>
        <style type="text/css">
            <!--
            body {
			  margin:0;
			  padding:0;
			  width: 100%;
			  font-family: sans-serif;
			  background: linear-gradient(#141e30, #243b55);
			}
            .container {
                height: 850px;
                width: 100%;
                display: flex;
			  justify-content: center;
			  align-items: center;
			 
               
            }
            .headbanner {
                width: 100%;
                height: 80px;
                 display: flex;
			  justify-content: center;
			  align-items: center;
                background: linear-gradient(#141e30, #243b55);


            }
            .container .headbanner h1 {
                font-family: Verdana, Geneva, sans-serif;
                color: white;

            }
            .mycontent {
                height: 650px;
                width: 900px;
                
            }
            
            
            .footer {
				  position: absolute;
				  right: 0;
				  bottom: 0;
				  left: 0;
				  top:830px;
				  padding: 2rem;
				  color:white;
				  background-color: inherit;
				  text-align: center;
				}
            .cartof {
                float: left;
                height: 25px;
                width: 900px;
                font-family: Verdana, Geneva, sans-serif;
                font-weight: bold;
                padding-top:5px;
            }
            img {
				  border-radius: 5%;
				}
            .cartcontent {
                float: left;
                height: 200px;
                width: 900px;
                background: linear-gradient(#141e30, #243b55);
                border-width:1px;
                border-style:solid;
                border-color:#FFCC00;
                margin-top: 30px;
            }
            .prod1 {
                float: left;
                height: 100px;
                width: 900px;
                border-bottom-width:1px;
                border-bottom-style:solid;
                border-bottom-color:#FFCC00;
            }
            td{
                padding-left:5px;
                color:white;
                font-family:Verdana, Geneva, sans-serif;

            }
            .items {
                float: left;
                height: auto;
                width: 900px;
            }
           
            tr.border_bottom td {
                border-bottom-width:5px;
                border-bottom-style:solid;
                border-bottom-color:#FFCC00;
                height:100px;
            }
            .myitems {
                float: left;
                height: 200px;
                width: 600px;
                border-right-width:1px;
                border-right-style:solid;
                border-right-color:#FFCC00;
                overflow: auto;
            }
            th{
                color:#FFF;
                font-family:Verdana, Geneva, sans-serif;
                font-weight:normal;
                background: linear-gradient(#141e30, #243b55);
            }
            a{
            	color:white;
            }
            .total {
                float: left;
                height: 180px;
                width: 285px;
                font-family: Verdana, Geneva, sans-serif;
                font-size: 24px;
                font-weight: bold;
                padding-top:20px;
                padding-left:10px;
            }

			 input[type="submit"]{
				  position: relative;
				  display: inline-block;
				  padding: 5px 10px;
				  color: #03e9f4;
				  font-size: 8px;
				  text-decoration: none;
				  overflow: hidden;
				  transition: .5s;
				  margin-top: 5px;
				  background:none;
				  border-radius: 3px;
				}
				
				input[type="submit"]:hover {
				  background: #03e9f4;
				  color: #fff;
				  border-radius: 5px;
				  box-shadow: 0 0 5px #03e9f4,
				              0 0 25px #03e9f4,
				              0 0 50px #03e9f4,
				              0 0 100px #03e9f4;
				}
				
				



            -->
        </style>
    </head>
    <body style="margin:0; padding:0">


        <div class="container">
            <form action="requesthandle" method="post"> 
                <div class="headbanner">
                    <h1 >
                        <center>
                            Koni Store
                        </center>
                    </h1>
                </div>
                <div class="mycontent">
                    <div class="cartof">
                        <center><a style="color: white;">Cart Of ' <% out.print(session.getAttribute("user"));%> '  <input name="logout" type="submit" value="Logout"></input></a></center>
                    	<br />
                    </div>
                    <div class="cartcontent">
                        <div class="myitems">
                            <table width="600px" cellpadding="3" cellspacing="0">
                                <tr>
                                    <th>#id</th> 
                                    <th>Item</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                                <%if (session.getAttribute("itemlist") != null) {
                                        ArrayList mycart = (ArrayList) session.getAttribute("itemlist");
                                        for (int i = 0; i < mycart.size(); i++) {
                                            Item it = (Item) mycart.get(i);
                                %>
                                <tr>
                                    <td align="center"><%out.print(i);%></td>
                                    <td align="center"><% out.print(it.name);%></td> 
                                    <td align="center"><% out.print(it.price);%></td>
                                    <td align="center"><input name="del" type="submit" value="Delete" onclick="this.value=<%out.print(i);%>"></input></td>
                                </tr>
                                <%}
                                    }
                                %>    
                            </table>
                        </div>
                        <div class="total">
                            <a>My Total : $[<% out.print(session.getAttribute("total"));%>]</a><br />
                            <a style="font-size:14px">Total Qty: [<% ArrayList il = (ArrayList) session.getAttribute("itemlist");
                       out.print(il.size());%>]</a><br />
                            <input name="chkout" type="submit" value="Checkout" />
                        </div>
                    </div>
                    <div class="items">
                        <table width="900px">
                            <tr class="border_bottom">
                                <td>#1</td>
                                <td>Sunglass</td>
                                <td>Fastrack Wayfarer Sunglasses (Grey)</td>
                                <td>$34</td>
                                <td><img src="img/sunglass.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart1" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#2</td>
                                <td>Wrist Watch</td>
                                <td>Rado R30181103</td>
                                <td>$66</td>
                                <td><img src="img/watch.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart2" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#3</td>
                                <td>Camera</td>
                                <td>Canon EOS 3000D DSLR Camera Single Kit with 18-55 lens</td>
                                <td>$167</td>
                                <td><img src="img/camera.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart3" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#4</td>
                                <td>Shoes</td>
                                <td>Provogue Lace Up For Men  (Black)</td>
                                <td>$23</td>
                                <td><img src="img/shoes.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart4" type="submit" value="Add to Cart" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
                
            </form>
        </div>
        	
    </body>
    <div class="footer">
            	<a href="https://www.linkedin.com/in/gururajkoni/" style="color:white; text-decoration:none">© Copyright, Gururaj Koni</a>
            </div>
</html>

