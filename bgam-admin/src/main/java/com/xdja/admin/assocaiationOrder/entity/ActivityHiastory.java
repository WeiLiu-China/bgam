package com.xdja.admin.assocaiationOrder.entity;

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
@TableName("t_activity_hiastory")
public class ActivityHiastory extends Model<ActivityHiastory> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_DEPT_ID")
    private String deptId;

    @TableField("C_ASSOCAIATION_ID")
    private String assocaiationId;

    @TableField("N_BEING_STATE")
    private Integer beingState;

    @TableField("N_START_TIMESTAMP")
    private Integer startTimestamp;

    @TableField("N_END_TIMESTAMP")
    private Integer endTimestamp;

    @TableField("C_LNG_LAT")
    private String lngLat;

    @TableField("N_STATE")
    private Integer state;

    @TableField("C_COMMON")
    private String common;

    @TableField("C_BELONG_DEPT_ID")
    private String belongDeptId;

    @TableField("C_CREATER_ID")
    private String createrId;

    @TableField("C_PHONE")
    private String phone;

    @TableField("C_SOURCE_ID")
    private String sourceId;

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
