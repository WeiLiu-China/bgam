package com.xdja.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
@TableName("t_activity_value_history")
public class ActivityValueHistory extends Model<ActivityValueHistory> {

    private static final long serialVersionUID = 1L;

    @TableId("C_ID")
    private String id;

    @TableField("C_VALUE")
    private String value;

    @TableField("C_CODE")
    private String code;

    @TableField("C_BEING_TIME")
    private String beingTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
