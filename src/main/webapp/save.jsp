<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>

		

            <%
            
            Date rdate= new Date(session.getCreationTime());
            String username = session.getAttribute("username").toString();              
            java.sql.Date rdate1 = new java.sql.Date(rdate.getTime()); 
                
            int suspects_no = Integer.parseInt(request.getParameter("suspects_no"));
            String suspect_name = request.getParameter("suspect_name");
            String suspected_location = request.getParameter("suspected_location");
            String travelhistory = request.getParameter("travelhistory");        
      		String relation = request.getParameter("relation");
        	String comments = request.getParameter("comments");
        	String reason = request.getParameter("reason");
           
        	
        	
        	
        	
        	
        	
        	try {
						
			String query="update customer set suspects_no=?,suspect_name=?,suspected_location=?,travelhistory=?,rdate=?,relation=?,comments=?,reason=?  where username=?";			
            Connection connection = DbConnection.getconnection();  
            PreparedStatement ps=connection.prepareStatement(query);
           
            ps.setInt(1,suspects_no);
            ps.setString(2,suspect_name);            
            ps.setString(3,suspected_location);
            ps.setString(4,travelhistory);	
            ps.setDate(5,rdate1);
            ps.setString(6,relation);
            ps.setString(7,comments);
            ps.setString(8,reason);
            ps.setString(9, username);
                       
            int x=ps.executeUpdate();
            if(x>0)
            {
               
                response.sendRedirect("startup.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("index.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
           
          %>