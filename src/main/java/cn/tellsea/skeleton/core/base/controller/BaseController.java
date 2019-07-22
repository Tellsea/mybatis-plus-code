package cn.tellsea.skeleton.core.base.controller;

import cn.tellsea.skeleton.core.base.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 基类控制器
 *
 * @param <T> 不能为空
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
public class BaseController<T> {

    @Autowired
    protected BaseService<T> baseService;

}
