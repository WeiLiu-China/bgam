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
@TableName("t_menu")
public class Menu extends Model<Menu> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("C_CODE")
    private String code;

    @TableField("C_PARENT_ID")
    private String parentId;

    @TableField("C_ORDER_NUM")
    private Integer orderNum;

    @TableField("C_ICON")
    private String icon;

    @TableField("C_TYPE")
    private Integer type;

    @TableField("C_URL")
    private String url;

    @TableField("N_BE_USED")
    private Integer beUsed;

    @TableField("N_CAN_EDIT")
    private Integer canEdit;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
