<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
           
            String username = request.getParameter("username");
            String password = request.getParameter("password");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String cnumber = request.getParameter("phone");
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
          
            
            
            PreparedStatement ps=connection.prepareStatement("insert into admin values(?,?,?,?,?)");
            ps.setString(1,username);
            ps.setString(2,address);
            ps.setString(3,password);            
            ps.setString(4,email);
            ps.setString(5,cnumber);
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("logina.jsp?m1=success&m2=n");

            }
             else
            {

                response.sendRedirect("cor_adminreg.jsp?m2=Failed&m1=n");   

            }  
    
              }
             catch (Exception e) 
             {
                
                response.sendRedirect("cor_adminreg.jsp?m1=n&m2=FailedR");
             }
            %>
          