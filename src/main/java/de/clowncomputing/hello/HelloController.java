package de.clowncomputing.hello;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class HelloController {

    @RequestMapping("/")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("hello");
    }


    @RequestMapping("/host")
    public ResponseEntity<String> defaultResponse() {
        try {
            return ResponseEntity.ok(InetAddress.getLocalHost().getHostName());
        } catch (UnknownHostException e) {
            return ResponseEntity.ok("omg where am i?");
        }
    }

}
