package com.yogiyo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry
//		// http://localhost/images/marobiana_16205748673/sun.png 이런 형태와 같이 접근 가능하게 매핑해준다.
//		.addResourceHandler("/images/**")
//		.addResourceLocations("file:///" + FileManagerService.FILE_UPLOAD_PATH); // 실제 파일 저장 위치
//	}
}
