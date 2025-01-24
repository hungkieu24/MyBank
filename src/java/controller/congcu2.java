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
import java.text.DecimalFormat;

/**
 *
 * @author ADMIN
 */
public class congcu2 extends HttpServlet {
   
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
            out.println("<title>Servlet congcu2</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet congcu2 at " + request.getContextPath () + "</h1>");
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
          String loanAmountStr = request.getParameter("loanAmount");
        String loanRateStr = request.getParameter("loanRate");
        String loanMonthsStr = request.getParameter("loanMonths");
        String calculationMethod = request.getParameter("calculationMethod");

        try {
            // Chuyển đổi dữ liệu
            double loanAmount = Double.parseDouble(loanAmountStr);
            double annualRate = Double.parseDouble(loanRateStr);
            int months = Integer.parseInt(loanMonthsStr);

            // Tính toán
            DecimalFormat df = new DecimalFormat("#,###.##");
            String result;
            String rs;

            if ("reducing".equals(calculationMethod)) {
                // Tính theo dư nợ giảm dần
                double totalInterest = 0;
                double principalPerMonth = loanAmount / months;

                for (int i = 0; i < months; i++) {
                    double remainingLoan = loanAmount - (i * principalPerMonth);
                    totalInterest += (remainingLoan * (annualRate / 100) / 12);
                }

                double totalPayment = loanAmount + totalInterest;
                result = "Tổng số tiền lãi: " + df.format(totalInterest) + " VNĐ<br>" ;
                
                 rs=         "Tổng số tiền phải trả: " + df.format(totalPayment) + " VNĐ";
            } else {
                // Tính theo dư nợ ban đầu
                double monthlyInterest = (loanAmount * (annualRate / 100)) / 12;
                double totalInterest = monthlyInterest * months;
                double totalPayment = loanAmount + totalInterest;

                result =  df.format(totalInterest) + " VNĐ<br>" ;
                       
                        rs=   df.format(totalPayment) + " VNĐ";
            }

            // Gửi kết quả về JSP
        request.setAttribute("loanAmount", loanAmountStr);
            request.setAttribute("total", rs);

            request.setAttribute("loanResult", result);
            request.getRequestDispatcher("congcuvay.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            // Xử lý lỗi nhập liệu
            
            
            request.setAttribute("loanResult", "Dữ liệu nhập không hợp lệ. Vui lòng kiểm tra lại!");
            request.getRequestDispatcher("congcuvay.jsp").forward(request, response);
        }
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
