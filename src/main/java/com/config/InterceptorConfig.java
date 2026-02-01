package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import com.interceptor.AuthorizationInterceptor;
import java.io.File;

@Configuration
public class InterceptorConfig extends WebMvcConfigurationSupport {

    @Bean
    public AuthorizationInterceptor getAuthorizationInterceptor() {
        return new AuthorizationInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 【关键点1】权限拦截器配置
        registry.addInterceptor(getAuthorizationInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/static/**")
                .excludePathPatterns("/admin/**") // 前端Vue应用
                .excludePathPatterns("/front/**") // 前台页面
                .excludePathPatterns("/upload/**"); // <--- 必须显式排除 upload 路径，否则会被拦截跳转到登录
        super.addInterceptors(registry);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // 获取当前项目根路径
        String projectPath = System.getProperty("user.dir");

        // 构建本地绝对路径 (指向 src/main/resources/static/upload/)
        String uploadPath = "file:" + projectPath + "/src/main/resources/static/upload/";

        // 【关键点2】在控制台打印路径，请在启动日志中搜索 "Configuring Upload Path"
        System.err.println("=================================================================");
        System.err.println("【系统启动】正在配置图片映射路径...");
        System.err.println("【映射逻辑】浏览器访问 /upload/xxx -> 映射到本地: " + uploadPath);
        System.err.println("=================================================================");

        // 【关键点3】配置静态资源映射
        // 专门处理图片上传路径
        registry.addResourceHandler("/upload/**")
                .addResourceLocations(uploadPath);

        // 配置Vue前端资源 - /admin/** 映射到 classpath:/admin/
        registry.addResourceHandler("/admin/**")
                .addResourceLocations("classpath:/admin/");

        // 处理其他静态资源 (Swagger, 前台等)
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/resources/")
                .addResourceLocations("classpath:/static/")
                .addResourceLocations("classpath:/front/")
                .addResourceLocations("classpath:/public/");

        super.addResourceHandlers(registry);
    }
}