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
@TableName("t_role_menu")
public class RoleMenu extends Model<RoleMenu> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_ROLE_ID")
    private String roleId;

    @TableField("C_MENU_ID")
    private String menuId;

    @TableField("N_CAN_EDIT")
    private Integer canEdit;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
