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
@TableName("t_activity_hiastory_detail")
public class ActivityHiastoryDetail extends Model<ActivityHiastoryDetail> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_ACTIVITY_HIASTORY_ID")
    private String activityHiastoryId;

    @TableField("C_PERSON_ID")
    private String personId;

    @TableField("N_STATE")
    private Integer state;

    @TableField("N_START_TIMESTAMP")
    private Integer startTimestamp;

    @TableField("N_END_TIMESTAMP")
    private Integer endTimestamp;

    @TableField("C_LNG_LAT")
    private String lngLat;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
