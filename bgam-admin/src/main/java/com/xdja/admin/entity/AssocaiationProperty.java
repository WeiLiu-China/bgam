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
@TableName("t_assocaiation_property")
public class AssocaiationProperty extends Model<AssocaiationProperty> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_ASSOAICATION_ID")
    private String assoaicationId;

    @TableField("C_ITEM")
    private String item;

    @TableField("C_CREATER_ID")
    private String createrId;

    @TableField("N_IS_SEARCH")
    private Integer isSearch;

    @TableField("C_CODE")
    private Integer code;

    @TableField("N_CANEDIT")
    private Integer canedit;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
