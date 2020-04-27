package com.xdja.base.controller;


import com.xdja.common.constants.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author liuwei
 * @since 2020-04-23
 */
@RestController
@RequestMapping("/common/resource")
public class ResourceController {

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Result add(/*@RequestBody  */) {
		return Result.success();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public Result delete(String id) {
		return Result.success();
	}


	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Result edit(/*@RequestBody  */) {
		return Result.success();
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public Result queryDetail(String id) {
		return Result.success();
	}
}
