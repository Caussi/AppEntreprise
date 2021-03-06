package com.example.application_entreprise_projet.FILTER;

import com.example.application_entreprise_projet.CLASS.User;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/AdminIndex", "/validationTrader", "/deleteUser", "/adminStatic"})
public class FilterNotConnectedOrNotAdmin implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        System.out.println("filter execution");
        HttpSession session = ((HttpServletRequest) request).getSession(true);

        if (session.getAttribute("user") == null ) {
            System.out.println("session null");
            //((HttpServletRequest) request).getRequestDispatcher("index.jsp").include(request, response);
            ((HttpServletResponse) response).sendRedirect("index.jsp");
        }
        else
        {
            User user = (User) session.getAttribute("user");
            if(user.getAdmin() == false || user.getTrader() == true)
            {
                System.out.println("error redirection ot the good page");
                if(user.getTrader() == true)
                {
                    ((HttpServletResponse) response).sendRedirect("TraderIndex");
                }
                else if(user.getTrader() == false)
                {
                    ((HttpServletResponse) response).sendRedirect("ConsumerIndex");
                }
                else
                {
                    ((HttpServletResponse) response).sendRedirect("index.jsp");
                }
            }
            else
            {
                chain.doFilter(request, response);
            }

        }


    }
}
