package beans;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletResponse;

public class NoCacheFilter implements Filter{

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) arg0;
	    HttpServletResponse res = (HttpServletResponse) arg1;

	    if (!req.getRequestURI().startsWith(req.getContextPath())) {                                                                                                            

	        res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	        res.setHeader("Pragma", "no-cache");
	        res.setDateHeader("Expires", 0);
	    }

	    arg2.doFilter(arg0, arg1);
		
	}

}
