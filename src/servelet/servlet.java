package servelet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.zip.GZIPOutputStream;

@WebServlet("/first")
public class servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie = new Cookie("first", "Cookie");
        resp.addCookie(cookie);
        if (req.getHeader("Accept-Encoding").contains("gzip")) {
            Writer out;
            PrintWriter printWriter = new PrintWriter(new GZIPOutputStream(resp.getOutputStream()));
            printWriter.write("work Gzip");
        } else {
            resp.setHeader("Accept-Encoding", "gzip");
            resp.getWriter().write("work nou gzip");
        }

    }
}
