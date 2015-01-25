package hello.controllers

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
public class HelloWorldController {
    @RequestMapping("/hello-world")
    def helloWorld() {
        [
                hello: 'world'
        ]
    }
}
