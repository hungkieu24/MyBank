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
public class congcu extends HttpServlet {
   
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
            out.println("<title>Servlet congcu</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet congcu at " + request.getContextPath () + "</h1>");
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
        String amountStr = request.getParameter("amount");
        String rateStr = request.getParameter("rate");
        String monthsStr = request.getParameter("months");

        try {
            // Chuyển đổi sang số
            double amount = Double.parseDouble(amountStr);
            double rate = Double.parseDouble(rateStr);
            int months = Integer.parseInt(monthsStr);

            // Tính lãi suất
            double interest = amount * (rate / 100) / 12 * months;

            // Định dạng số
            DecimalFormat df = new DecimalFormat("#,###.##");

            // Kết quả
            String result = "Số tiền lãi là: " + df.format(interest) + " VNĐ";

            // Gửi kết quả về JSP
            request.setAttribute("result", result);
            request.getRequestDispatcher("congcu.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            // Trường hợp lỗi nhập liệu
            request.setAttribute("result", "Dữ liệu nhập không hợp lệ. Vui lòng kiểm tra lại!");
            request.getRequestDispatcher("congcu.jsp").forward(request, response);
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
