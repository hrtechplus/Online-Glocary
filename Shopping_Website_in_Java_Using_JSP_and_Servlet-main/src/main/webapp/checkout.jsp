
<%@page import="java.util.ArrayList"%>
<%@ page import="classes.Item" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Shopping Cart - Check out</title>
        <style type="text/css">
            <!--
            html {
			  height: 100%;
			}
			body {
			  margin:0;
			  padding:0;
			  font-family: sans-serif;
			  background: linear-gradient(#141e30, #243b55);
			}
            
            
            .container {
                height: 700px;
                width: 100%;
                margin:auto;
                
            }
            .headbanner {
                 width: 100%;
                height: 80px;
                 display: flex;
			  justify-content: center;
			  align-items: center;
                background: linear-gradient(#141e30, #243b55);
				color:white;

            }
            .container .headbanner h1 {
                font-family: Verdana, Geneva, sans-serif;
                color: white;
				
            }
            .mycontent {
         		margin: 10% 28%;
                height: 200px;
                width: 600px;
                padding: 20px;
                border-width:2px;
                border-style:solid;
                border-color:#FFCC00;
                color:white;
                border-radius:8px;
            }
           
            td{
                font-family:Verdana, Geneva, sans-serif;
                font-weight:normal;
                font-size:14px;

            }
			
			.footer {
				  position: absolute;
				  right: 0;
				  bottom: 0;
				  left: 0;
				 
				  padding: 2rem;
				  color:white;
				  background-color: inherit;
				  text-align: center;
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
				  margin-top: 2px;
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
        <form action="purchase" method="post">   
            <%
                ArrayList it_list = (ArrayList) session.getAttribute("itemlist");

            %>
            <div class="container">

                <div class="headbanner">
                    <h1 style="display:inline"><center>
                            Koni Store
                        </center></h1>
                </div>
                <div class="mycontent">
                    <a style="color:yellow; font-family:sans-serif; font-size:20px; font-weight:bold">Checkout My Cart</a><br />
                    <table width="500px">
                        <%
                            for (int i = 0; i < it_list.size(); i++) {
                                classes.Item itm = (Item) it_list.get(i);
                        %>
                        <tr>
                            <td><%out.print(itm.name);%></td> 
                            <td><%out.print(itm.price);%></td> 
                        </tr>
                        <% }%>
                        <tr>
                            <td style="font-weight:bold">My Total</td><td style="font-weight:bold">$[<%out.print(session.getAttribute("total"));%>]</td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Purchase" /></td>
                        </tr>	
                        <tr>
                            <td><img src="img/paywith.png" width="210" height="80" /></td></tr>
                    </table>
                </div>
                <div class="footer">
            	<a href="https://www.linkedin.com/in/gururajkoni/" style="color:white; text-decoration:none">© Copyright, Gururaj Koni</a>
            	</div>
            </div>
        </form>
    </body>
</html>

