package com.yu.st.filter;

import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter(
	urlPatterns= {"/*"}
)

public class EncodingFilter implements Filter {


	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		String url=((HttpServletRequest)request).getRequestURI();
		if(url.indexOf(".css")>0||url.indexOf(".js")>0||url.indexOf(".png")>0) {
			chain.doFilter(request, response);
			return;
		}

		response.setContentType("text/html;charset=utf-8");
		 
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}



}
