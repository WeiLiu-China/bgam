package com.xdja.base.entity;

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
@TableName("t_control_dept")
public class ControlDept extends Model<ControlDept> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_MANAGER_ID")
    private String managerId;

    @TableField("C_DEPT_ID")
    private String deptId;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
