package cn.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class AdminFilter implements Filter {

        @Override
        public void init(FilterConfig filterConfig) throws ServletException {

        }

        @Override
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
            HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;

            Object loginAdminName = httpServletRequest.getSession().getAttribute("loginAdminName");

            if (loginAdminName == null) {
                httpServletRequest.getRequestDispatcher("/login_admin.jsp").forward(servletRequest,servletResponse);
            } else {
                filterChain.doFilter(servletRequest,servletResponse);
            }
        }

        @Override
        public void destroy() {

        }
}

