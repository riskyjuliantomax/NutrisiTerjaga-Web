/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "SaveRegister", urlPatterns = {"/SaveRegister"})
public class SaveRegister extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();

        String user = request.getParameter("user");
        String password = request.getParameter("pass");
        String repeatpassword = request.getParameter("passrepeat");
        String nama = request.getParameter("namalengkap");
        String nohp = request.getParameter("nohp");
        String email = request.getParameter("email");

        nutrisiterjagauser n = new nutrisiterjagauser();

        if (password.equals(repeatpassword)) {
            if (nohp.length() <= 12 && nohp.length() >= 11) {
                n.setUsername(user);
                n.setEmail(email);
                n.setNama(nama);
                n.setPassword(password);
                n.setNohp(nohp);

                int status = NutrisiConnection.register(n);

                if (status > 0) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Gagal Register !');");
                    out.println("location='index.jsp';");
                    out.println("</script>");
                }
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('No Handphone yang di input harus 11-12 Digit');");
                out.println("location='register.jsp';");
                out.println("</script>");
            }
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Password Dan Konfimasi Password Tidak Sama!');");
            out.println("location='register.jsp';");
            out.println("</script>");
        }
        out.close();

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
