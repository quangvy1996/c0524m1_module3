package com.example.bai_1_va_2;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double operand1 = Double.parseDouble(request.getParameter("operand1"));
        double operand2 = Double.parseDouble(request.getParameter("operand2"));
        String operator = request.getParameter("operator");
        double result = 0;
        String operation = "";
        String errorMessage = null;

        try {
            switch (operator) {
                case "add":
                    result = operand1 + operand2;
                    operation = "+";
                    break;
                case "subtract":
                    result = operand1 - operand2;
                    operation = "-";
                    break;
                case "multiply":
                    result = operand1 * operand2;
                    operation = "*";
                    break;
                case "divide":
                    if (operand2 == 0) {
                        throw new ArithmeticException("Error: Division by zero");
                    }
                    result = operand1 / operand2;
                    operation = "/";
                    break;
                default:
                    operation = "Invalid operation";
            }
        } catch (ArithmeticException e) {
            errorMessage = e.getMessage();
        }

        request.setAttribute("operand1", operand1);
        request.setAttribute("operand2", operand2);
        request.setAttribute("operation", operation);
        request.setAttribute("result", result);
        request.setAttribute("errorMessage", errorMessage);

        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }
}
