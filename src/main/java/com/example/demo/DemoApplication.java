package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
public class DemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}

@RestController
class ApiController {
    
    @GetMapping("/api/hello")
    public Map<String, String> hello() {
        Map<String, String> response = new HashMap<>();
        response.put("message", "Hello from Spring Boot in Docker! 🐳");
        response.put("status", "success");
        return response;
    }
    
    @GetMapping("/api/time")
    public Map<String, String> getServerTime() {
        Map<String, String> response = new HashMap<>();
        String time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        response.put("time", time);
        response.put("timezone", "UTC");
        return response;
    }
    
    @GetMapping("/")
    public ResponseEntity<Void> redirectToIndex() {
        return ResponseEntity.status(302).header("Location", "/index.html").build();
    }
}
