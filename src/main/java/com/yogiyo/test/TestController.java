package com.yogiyo.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/test")
@Controller
public class TestController {
	
	// 요청 URL : http://localhost/test/test1
	@ResponseBody
    @RequestMapping("/test1")
    public String helloWorld() {
        return "Hello world!";
    }
  
	// json
	@ResponseBody
	@RequestMapping("/test2")
	public Map<String, Object> test2() {
		Map<String, Object> result = new HashMap<>();
		result.put("aaaa", 1234);
		result.put("bbbb", "zzz");
		result.put("cccc", "aaaaaaa");
		
		return result;
	}
	
	// jsp
	@RequestMapping("/test3")
	public String test3() { // view의 경로를 String
		return "test/example";
	}
	
}