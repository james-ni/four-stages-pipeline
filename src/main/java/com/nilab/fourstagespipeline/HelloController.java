package com.nilab.fourstagespipeline;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public ResponseEntity<String> sayHello(){
		return ResponseEntity.ok("Hello World");
	}
}
