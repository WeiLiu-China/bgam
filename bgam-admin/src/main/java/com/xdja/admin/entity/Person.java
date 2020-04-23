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
@TableName("t_person")
public class Person extends Model<Person> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("C_CODE")
    private String code;

    @TableField("C_IDENTIFIER")
    private String identifier;

    @TableField("N_UPDATE_TIMESTAMP")
    private Integer updateTimestamp;

    @TableField("C_STATE")
    private String state;

    @TableField("C_MOBILE")
    private String mobile;

    @TableField("C_OFFICE_PHONE")
    private String officePhone;

    @TableField("N_ORDER_NUM")
    private Integer orderNum;

    @TableField("C_PASSWORD")
    private String password;

    @TableField("C_POSITION")
    private String position;

    @TableField("C_SEX")
    private String sex;

    @TableField("C_JOB")
    private String job;

    @TableField("C_COLLEAGE_ID")
    private String colleageId;

    @TableField("C_NOTE")
    private String note;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
