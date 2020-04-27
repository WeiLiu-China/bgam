package com.xdja.admin.assocaiationApply.entity;

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
@TableName("t_apply")
public class Apply extends Model<Apply> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_ASSAIATION_ID")
    private String assaiationId;

    @TableField("C_APPLY_TIME")
    private String applyTime;

    @TableField("C_APPROVE_TIME")
    private String approveTime;

    @TableField("N_STATE")
    private Integer state;

    @TableField("C_CRETOR_ID")
    private String cretorId;

    @TableField("C_RESOURCE_ID")
    private String resourceId;

    @TableField("IS_FOREVER")
    private Integer isForever;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
