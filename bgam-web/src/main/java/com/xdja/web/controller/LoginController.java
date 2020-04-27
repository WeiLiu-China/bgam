package com.xdja.web.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * 登录验证
 *
 * @author zk
 * @since 2020/1/14
 */
@Slf4j
@RestController
@RequestMapping(value = "/public/admin")
public class LoginController {

    //@Autowired
    //private TokenFactory tokenFactory;

    /**
     * 登录逻辑
     *
     * @return token
     */
    //@PostMapping(value = "/login")
    //public Result login(){
    //    String token = tokenFactory.getOperator().add(UUIDUtil.random());
    //    return Result.success(token);
    //}
}
