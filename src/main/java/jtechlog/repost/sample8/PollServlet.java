package jtechlog.repost.sample8;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jtechlog.repost.PollResult;
import org.apache.struts.util.TokenProcessor;

/**
 * Az űrlapot jeleníti meg, valamint a 
 * szavazást dolgozza fel.
 */
@WebServlet(urlPatterns = "/sample8/poll.html")
public class PollServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req,
            HttpServletResponse res) throws ServletException, IOException {
        TokenProcessor.getInstance().saveToken(req);
        req.getServletContext().getRequestDispatcher("/WEB-INF/jsp/sample8/poll.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (!TokenProcessor.getInstance().isTokenValid(req, true)) {
            throw new ServletException("Már szavazott!");
        }

        PollResult result = (PollResult) getServletContext().getAttribute("result");
        if (result == null) {
            result = new PollResult();
            getServletContext().setAttribute("result", result);
        }
        result.vote(Integer.parseInt(req.getParameter("index")));
        resp.sendRedirect("result.html");
    }
}
