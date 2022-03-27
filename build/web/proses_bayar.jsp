<%-- 
    Document   : proses_bayar
    Created on : Jan 26, 2021, 10:18:02 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            LocalDateTime test = LocalDateTime.now();
            int hour = test.getHour();
            int menit = test.getMinute();
            int detik = test.getSecond();
            String hourmenit = hour + " " + menit + " " + detik;
            LocalDate myObj = LocalDate.now();
//            LocalTime time = LocalTime.now();
//            out.print(hour + " " + menit);
            String userid = (String) session.getAttribute("sessuser");
            String nama = request.getParameter("namadepan");
            String namabel = request.getParameter("namabelakang");
            String nohp = request.getParameter("nohp");
            String alamat = request.getParameter("alamatpengiriman");
            String tempattinggal = request.getParameter("tempattinggal");
            String kota = request.getParameter("kota");
            String kabpro = request.getParameter("kabupaten/provinsi");
            String kodepos = request.getParameter("kodepos");
            String catatan = request.getParameter("catatan");
            String id_produk[] = request.getParameterValues("id_produk");
            String harga[] = request.getParameterValues("harga");
            String jumlah[] = request.getParameterValues("jumlah");
            String metodebayar = request.getParameter("metodepembayaran");
            String totalharga = request.getParameter("totalharga");
//              for (int i = 0; i < id_produk.length; i++) {out.print(id_produk[i]);}
            try {
                if (userid != null && metodebayar != null) {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conname = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                    Statement stuser = conname.createStatement();
                    PreparedStatement ps = conname.prepareStatement("insert into pembayaran_user(namadepan,namabelakang,nohp,alamat,tmp_tinggal,kota,kabpro,kodepos,catatan,metodepembayaran,totalharga,tgl_beli,jammenit,userid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, nama);
                    ps.setString(2, namabel);
                    ps.setString(3, nohp);
                    ps.setString(4, alamat);
                    ps.setString(5, tempattinggal);
                    ps.setString(6, kota);
                    ps.setString(7, kabpro);
                    ps.setString(8, kodepos);
                    ps.setString(9, catatan);
                    ps.setString(10, metodebayar);
                    ps.setString(11, totalharga);
                    ps.setString(12, String.valueOf(myObj));
                    ps.setString(13, String.valueOf(hourmenit));
                    ps.setString(14, userid);
                    int queryjalan = ps.executeUpdate();
                    if (queryjalan != 0) {
                        for (int i = 0; i < id_produk.length; i++) {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                            Statement st = con.createStatement();
                            String sql = "insert into pembayaran(id_produk,harga,jumlah,jammenit,userid) "
                                    + "values(" + id_produk[i] + "," + harga[i] + "," + jumlah[i] + ",'" + hourmenit + "','" + userid + "')";
                            int k = st.executeUpdate(sql);
                        }
                        for (int i = 0; i < id_produk.length; i++) {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                            Statement st = con.createStatement();
                            String sql = "update produk set stok = stok - " + jumlah[i] + " where id = '" + id_produk[i] + "'";
                            int k = st.executeUpdate(sql);
                        }
                        for (int i = 0; i < id_produk.length; i++) {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                            Statement st = con.createStatement();
                            String sql = "delete from cart where id_produk = '" + id_produk[i] + "' && user_id ='" + userid + "'";
                            int k = st.executeUpdate(sql);
                        }
                        
                    }
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
