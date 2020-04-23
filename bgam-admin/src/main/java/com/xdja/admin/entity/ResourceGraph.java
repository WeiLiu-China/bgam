package com.xdja.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.sql.Blob;

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
@TableName("t_resource_graph")
public class ResourceGraph extends Model<ResourceGraph> {

    private static final long serialVersionUID = 1L;

    @TableField("C_ID")
    private String id;

    @TableField("C_NAME")
    private String name;

    @TableField("N_UPDATE_TIMESTAMP")
    private Integer updateTimestamp;

    @TableField("C_STATE")
    private String state;

    @TableField("C_GRAPH")
    private Blob graph;

    @TableField("C_LNG_LAT")
    private String lngLat;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
