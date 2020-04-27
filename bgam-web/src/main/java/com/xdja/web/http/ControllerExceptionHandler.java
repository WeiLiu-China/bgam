package com.xdja.web.http;

import com.xdja.common.constants.Result;
import com.xdja.common.exception.ErrorTipException;
import com.xdja.common.exception.NotFindLoginPersonException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Controller层异常捕获统一处理
 *
 * @author zk
 * @since 2019/10/18
 */
@Slf4j
@RestControllerAdvice
public class ControllerExceptionHandler {

    /**
     * 提示性异常
     *
     * @param exception errorTipException
     * @return response
     */
    @ExceptionHandler(ErrorTipException.class)
    @ResponseBody
    public Result handlerException(ErrorTipException exception) {
        return Result.failure(exception.getMessage());
    }

    /**
     * 未找到当前登录人异常
     *
     * @param exception errorTipException
     * @return response
     */
    @ExceptionHandler(NotFindLoginPersonException.class)
    @ResponseBody
    public Result handlerException(NotFindLoginPersonException exception) {
        return Result.failure(exception.getMessage());
    }

    /**
     * 缺少body参数
     *
     * @return response
     */
    @ExceptionHandler(HttpMessageNotReadableException.class)
    @ResponseBody
    public Result handlerException(HttpMessageNotReadableException exception) {
        return Result.failure("缺少必要body参数");
    }

    /**
     * 参数不合法
     *
     * @return response
     */
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseBody
    public Result handlerException(IllegalArgumentException exception) {
        return Result.failure("参数不合法：" + exception.getMessage());
    }

    /**
     * 缺少参数
     *
     * @return response
     */
    @ExceptionHandler(MissingServletRequestParameterException.class)
    @ResponseBody
    public Result handlerException(MissingServletRequestParameterException exception) {
        return Result.failure("缺少必要参数：" + exception.getMessage());
    }

    /**
     * 请求方法不支持
     *
     * @return response
     */
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    @ResponseBody
    public Result handlerException(HttpRequestMethodNotSupportedException exception) {
        return Result.failure("请求方法不支持：" + exception.getMessage());
    }

    /**
     * exception
     *
     * @return response
     */
    @ExceptionHandler({Exception.class})
    @ResponseBody
    public Result handlerException(Exception exception) {
        log.error(exception.getMessage(), exception);
        return Result.failure("系统异常:" + exception.getMessage());
    }
}
