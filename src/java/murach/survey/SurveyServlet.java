/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package murach.survey;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/survey")   // URL mapping trùng với action="survey"
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        request.setCharacterEncoding("UTF-8");   // đọc input form theo UTF-8
        response.setContentType("text/html; charset=UTF-8"); // output UTF-8
        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String birthDay = request.getParameter("birthDay");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates") != null ? "Yes" : "No";
        String emailOK = request.getParameter("emailOK") != null ? "Yes" : "No";
        String contactVia = request.getParameter("contactVia");

        // Lưu dữ liệu vào request
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("birthDay", birthDay);
        request.setAttribute("heardFrom", heardFrom);
        request.setAttribute("wantsUpdates", wantsUpdates);
        request.setAttribute("emailOK", emailOK);
        request.setAttribute("contactVia", contactVia);

        // Forward sang JSP cảm ơn
        RequestDispatcher dispatcher =
                request.getRequestDispatcher("thanks.jsp");
        dispatcher.forward(request, response);
    }
}