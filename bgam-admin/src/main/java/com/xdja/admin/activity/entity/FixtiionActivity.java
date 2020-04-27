package com.xdja.admin.activity.entity;

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
@TableName("t_fixtiion_activity")
public class FixtiionActivity extends Model<FixtiionActivity> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("C_ASSCAIATION_ID")
    private String asscaiationId;

    @TableField("C_BELONG_DEPT_ID")
    private String belongDeptId;

    @TableField("N_CREATE_TIMESTAMP")
    private Integer createTimestamp;

    @TableField("N_UPDATE_TIMESTAMP")
    private Integer updateTimestamp;

    @TableField("C_CREATER_ID")
    private String createrId;

    @TableField("C_PHONE")
    private String phone;

    @TableField("N_STATE")
    private Integer state;

    @TableField("C_SOURCE_ID")
    private String sourceId;

    @TableField("N_START_TIMESTAMP")
    private Integer startTimestamp;

    @TableField("N_END_TIMESTAMP")
    private Integer endTimestamp;

    @TableField("NEED_ORDER")
    private Integer needOrder;

    @TableField("N_CAPACITY")
    private Integer capacity;

    @TableField("N_REMAIN_CAPACITY")
    private Integer remainCapacity;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
