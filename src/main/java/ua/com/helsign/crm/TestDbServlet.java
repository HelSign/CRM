package ua.com.helsign.crm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet("/TestDBServlet")
public class TestDbServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String user = "postgres";
        String pw = "postgres";
        String url = "jdbc:postgresql://127.0.0.1:5432/crm_db";
        String driver = "org.postgresql.Driver";
        try {
            PrintWriter out = response.getWriter();
            out.println("Connecting to db");
            Connection conn = DriverManager.getConnection(url, user, pw);
            out.println("Done");
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            throw  new ServletException(e);
        }

    }

}
