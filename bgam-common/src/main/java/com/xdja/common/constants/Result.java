package com.xdja.common.constants;

import lombok.Data;

/**
 * Result
 *
 * @author jhm
 * @apiDefine Response
 * @apiSuccess {String} flag 0: fail, 1: success
 * @apiSuccess {String} message the error message when flag= 0, "成功" when flag= 1
 */
@Data
public class Result {

	private int flag;
	private String message;
	private Object data;

	private Result(int code, String message, Object result) {
		this.flag = code;
		this.message = message;
		this.data = result;
	}

	public static Result success(Object result) {
		return new Result(1, "成功", result);
	}

	public static Result success() {
		return new Result(1, "成功", null);
	}

	public static Result failure(String message) {
		return new Result(0, message, null);
	}
}
