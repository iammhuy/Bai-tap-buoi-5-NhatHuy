package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Survey;

public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String hear = request.getParameter("hear");
        String announce1 = request.getParameter("announce1");
        String announce2 = request.getParameter("announce2");
        String contact = request.getParameter("contact");

        // Gán vào bean
        Survey survey = new Survey();
        survey.setFirstName(firstName);
        survey.setLastName(lastName);
        survey.setEmail(email);
        survey.setDob(dob);
        survey.setHear(hear);
        survey.setAnnounce1(announce1);
        survey.setAnnounce2(announce2);
        survey.setContact(contact);

        // Gửi lên request scope
        request.setAttribute("survey", survey);

        // Forward sang thanks.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/thanks.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
