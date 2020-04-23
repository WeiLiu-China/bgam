package com.xdja.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 *
 * </p>
 *
 * @author liuwei
 * @since 2020-04-23
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_forever_apply")
public class ForeverApply extends Model<ForeverApply> {

	private static final long serialVersionUID = 1L;

	@TableField("C_ID")
	private String id;

	@TableField("C_APPLY_ID")
	private String applyId;

	@TableField("N_IS_FOREVER")
	private String isForever;


	@TableField("C_UNIT")
	private Integer unit;


	@TableField("C_FRECUCY")
	private Integer frecucy;


	@Override
	protected Serializable pkVal() {
		return null;
	}

}
