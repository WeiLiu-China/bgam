package com.xdja.base.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xdja.base.entity.Department;
import com.xdja.base.mapper.DepartmentMapper;
import com.xdja.base.service.DepartmentService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author liuwei
 * @since 2020-04-23
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

}
