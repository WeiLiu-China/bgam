package com.xdja.admin.assocaiation.entity;

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
@TableName("t_assocaiation")
public class Assocaiation extends Model<Assocaiation> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("N_CREATE_TIMESTAMP")
    private Integer createTimestamp;

    @TableField("N_UPDATE_TIMESTAMP")
    private Integer updateTimestamp;

    @TableField("C_CREATER_ID")
    private String createrId;

    @TableField("C_ICON_URL")
    private String iconUrl;

    @TableField("N_STATE")
    private Integer state;

    @TableField("C_COLLAEGE_ID")
    private String collaegeId;

    @TableField("C_LNG_LAT")
    private String lngLat;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
