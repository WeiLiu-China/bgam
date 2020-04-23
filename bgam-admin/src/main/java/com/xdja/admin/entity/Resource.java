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
@TableName("t_resource")
public class Resource extends Model<Resource> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("C_PARENT_ID")
    private String parentId;

    @TableField("C_GRADE")
    private String grade;

    @TableField("C_TREE_ID")
    private String treeId;

    @TableField("C_TREE_CODE")
    private String treeCode;

    @TableField("N_UPDATE_TIMESTAMP")
    private Integer updateTimestamp;

    @TableField("C_STATE")
    private String state;

    @TableField("N_ORDER_NUM")
    private Integer orderNum;

    @TableField("C_CODE")
    private String code;

    @TableField("N_NEED_ORDER")
    private Integer needOrder;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
