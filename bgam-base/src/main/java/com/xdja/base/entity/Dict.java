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
@TableName("t_dict")
public class Dict extends Model<Dict> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("C_CODE")
    private String code;

    @TableField("C_TYPE_CODE")
    private String typeCode;

    @TableField("C_ORDER_NUM")
    private Integer orderNum;

    @TableField("C_ICON_URL")
    private String iconUrl;

    @TableField("N_STATE")
    private Integer state;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
