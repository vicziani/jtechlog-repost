package jtechlog.repost.sample8;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Szavazás eredményét jeleníti meg.
 */
@WebServlet(urlPatterns = "/sample8/result.html")
public class ResultServlet extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest req,
            HttpServletResponse res) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/WEB-INF/jsp/sample8/result.jsp").forward(req, res);
    }
}
