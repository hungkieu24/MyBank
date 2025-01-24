/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class tinhvay extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tinhvay</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tinhvay at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        double interestRate = Double.parseDouble(request.getParameter("interestRate")) / 100;
        int loanTerm = Integer.parseInt(request.getParameter("loanTerm"));
        String calculationMethod = request.getParameter("calculationMethod");

        double totalInterest = 0;
        double totalPayment = 0;

        List<String[]> details = new ArrayList<>();

        if ("fixed".equals(calculationMethod)) {
            double monthlyPayment = (loanAmount * interestRate / 12) + (loanAmount / loanTerm);
            double monthlyInterest = loanAmount * interestRate / 12;

            for (int i = 1; i <= loanTerm; i++) {
                details.add(new String[]{
                        String.valueOf(i),
                        String.format("%.2f", loanAmount),
                        String.format("%.2f", loanAmount / loanTerm),
                        String.format("%.2f", monthlyInterest),
                        String.format("%.2f", monthlyPayment),
                        String.format("%.2f", loanAmount - (loanAmount / loanTerm) * i)
                });
            }

            totalInterest = monthlyInterest * loanTerm;
            totalPayment = loanAmount + totalInterest;

        } else if ("reducing".equals(calculationMethod)) {
            double remainingLoan = loanAmount;
            double monthlyPrincipal = loanAmount / loanTerm;

            for (int i = 1; i <= loanTerm; i++) {
                double monthlyInterest = remainingLoan * interestRate / 12;
                double monthlyPayment = monthlyPrincipal + monthlyInterest;

                details.add(new String[]{
                        String.valueOf(i),
                        String.format("%.2f", remainingLoan),
                        String.format("%.2f", monthlyPrincipal),
                        String.format("%.2f", monthlyInterest),
                        String.format("%.2f", monthlyPayment),
                        String.format("%.2f", remainingLoan - monthlyPrincipal)
                });

                remainingLoan -= monthlyPrincipal;
                totalInterest += monthlyInterest;
            }

            totalPayment = loanAmount + totalInterest;
        }

        request.setAttribute("details", details);
        request.setAttribute("totalInterest", totalInterest);
        request.setAttribute("totalPayment", totalPayment);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
