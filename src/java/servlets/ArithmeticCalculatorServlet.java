
package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Patrick
 */
public class ArithmeticCalculatorServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        request.setAttribute("message", "Result: ---");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       String operator = request.getParameter("operator");
       String value1 = request.getParameter("first");
       String value2 = request.getParameter("second");
       int intValue1;
       int intValue2;
       
       if (value1.equals("") || value2.equals("")) {
           request.setAttribute("message", "invalid");
            getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       try {
           intValue1 = Integer.parseInt(value1);
           intValue2 = Integer.parseInt(value2);
       }
       catch (NumberFormatException e) {
           request.setAttribute("message", "invalid");
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       if (operator.equals("+")) {
           request.setAttribute("message", "Result: " + (intValue1 + intValue2));
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       
       if (operator.equals("-")) {
           request.setAttribute("message", "Result: " + (intValue1 - intValue2));
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       if (operator.equals("*")) {
           request.setAttribute("message", "Result: " + (intValue1 * intValue2));
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       if (operator.equals("%")) {
           request.setAttribute("message", "Result: " + (intValue1 % intValue2));
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           return;
       }
       
    }
}

