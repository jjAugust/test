package org.zt.ssmm.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;  
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;  
import org.zt.ssmm.core.Ip;
import org.zt.ssmm.service.UserService;
  

  
  
public class IpInterceptor extends HandlerInterceptorAdapter{  
	@Autowired
    private UserService us;
  
    @Override    
    public boolean preHandle(HttpServletRequest request,    
            HttpServletResponse response, Object handler) throws Exception {    
   

        String requestUri = request.getRequestURI();  
        String contextPath = request.getContextPath();  
        String url = requestUri.substring(contextPath.length());  
        String ip=request.getRemoteAddr();
        System.out.println(ip);  
        System.out.println(url);  
        
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
//        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        
        Ip info=new Ip();
        info.setIp(ip);
        info.setUrl(url);
        info.setTime(df.format(new Date()));
        
        if (us.selectBlackIp(info)>=1) {  
        	 request.getRequestDispatcher("/blackIp.jsp").forward(request, response);  
         	return false;
        }  
        
        
        
		us.insertIpinfo(info);
//        System.out.println(us.selectIpOneSecond(info));
        if(us.selectIpOneSecond(info)>=5){
        	us.insertBlackIp(info);
        	 request.getRequestDispatcher("/blackIp.jsp").forward(request, response);  
        	return false;
        }
            return true;     
    }    
    

    @Override    
    public void postHandle(HttpServletRequest request,    
            HttpServletResponse response, Object handler,    
            ModelAndView modelAndView) throws Exception {     
    }    
   
    @Override    
    public void afterCompletion(HttpServletRequest request,    
            HttpServletResponse response, Object handler, Exception ex)    
            throws Exception {    
    }    
  
}  