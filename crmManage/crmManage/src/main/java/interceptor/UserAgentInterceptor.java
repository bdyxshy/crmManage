package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import util.AgentEnum;
import util.Equipment;

public class UserAgentInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		AgentEnum agent = Equipment.JudgeIsMoblie(request.getHeader(
				"User-Agent").toLowerCase());
		request.getSession().setAttribute("agent", agent);

		return true;
	}
}
