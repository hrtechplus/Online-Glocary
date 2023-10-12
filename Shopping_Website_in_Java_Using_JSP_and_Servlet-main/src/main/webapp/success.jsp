
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Shopping Cart - Success</title>
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


            }
            .container .headbanner h1 {
                font-family: Verdana, Geneva, sans-serif;
                color: white;

            }
            .mycontent {
                float: left;
                margin:100px 270px;
                height: 200px;
                width: 900px;
                padding-top:100px;
                 padding: 20px;
                border-width:2px;
                border-style:solid;
                border-color:#FFCC00;
                color:white;
                border-radius:8px;
            }
            
            .container .mycontent h3 {
                font-family: Verdana, Geneva, sans-serif;
            }
			input[type="submit"]{
				  position: relative;
				  display: inline-block;
				  padding: 5px 10px;
				  color: #03e9f4;
				  font-size: 12px;
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
			
				
            -->
        </style>
    </head>

    <body style="margin:0; padding:0">
        <%if(session.getAttribute("purch")!="true"){response.sendRedirect("index.jsp");
        } %>
        
        <form action="shop.jsp" method="post">
            <div class="container">

                <div class="headbanner">
                    <h1 style="display:inline" style="color:white;"><center>
                          Koni Store
                        </center></h1>
                </div>
                <div class="mycontent">
                    <h3 align="center" style="color:white;">Purchase has been succeeded! Thank You.<br /><br/><input type="submit" value="Okay" /></h3>
                </div>
                <div class="footer">
            	<a href="https://www.linkedin.com/in/gururajkoni/" style="color:white; text-decoration:none">© Copyright, Gururaj Koni</a>
            	</div>
            </div>
        </form>
    </body>
</html>
