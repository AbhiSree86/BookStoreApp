import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BookServlet")

public class BookServlet extends HttpServlet
{

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)

            throws ServletException, IOException
    {

        String book =
                request.getParameter("book");

        HttpSession session =
                request.getSession();

        ArrayList<String> cart =
                (ArrayList<String>)
                session.getAttribute("cart");

        if(cart == null)
        {
            cart = new ArrayList<>();
        }

        cart.add(book);

        session.setAttribute("cart", cart);

        response.setContentType("text/plain");

        PrintWriter out =
                response.getWriter();

        out.print(book + " added to cart");
    }

}