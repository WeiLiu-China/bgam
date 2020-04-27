package com.xdja.base.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xdja.base.entity.Person;
import com.xdja.base.mapper.PersonMapper;
import com.xdja.base.service.PersonService;
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
public class PersonServiceImpl extends ServiceImpl<PersonMapper, Person> implements PersonService {

}
