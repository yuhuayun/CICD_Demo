package cds.com.springboot.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by edison on 2018/4/3.
 */
@RestController
public class TestController {

    @RequestMapping("/index")
    public String show(){
        return "Hello World!cloudtest，this is a test_Rolling updates demo";
    }
}
