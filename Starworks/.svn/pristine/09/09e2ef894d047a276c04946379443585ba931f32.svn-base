package com.sw.ddit.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

import lombok.extern.slf4j.Slf4j;

/*		/notice/register -> loginForm -> 로그인 ->CustomLoginSuccessHandler(성공)
		-> 사용자 작업.... -> /notice/register로 리다이렉트 해줌(스프링 시큐리티에서 기본적으로 사용되는 구현 클래스)
 */
@Slf4j
public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private RequestCache requestCache = new HttpSessionRequestCache();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request
			, HttpServletResponse response, Authentication auth) throws ServletException, IOException {
		
		log.warn("onAuthenticationSuccess");
		User customUser = (User) auth.getPrincipal();
		 
		log.info("username : " + customUser.getUsername());
		log.info("password : " + customUser.getPassword());
		
		super.onAuthenticationSuccess(request, response, auth);
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		String targetUrl = savedRequest.getRedirectUrl();
		
		log.warn("Login Success targetUrl : " + targetUrl);
//		response.sendRedirect(targetUrl);

	}
	
}
