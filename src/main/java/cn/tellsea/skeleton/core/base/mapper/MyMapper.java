package cn.tellsea.skeleton.core.base.mapper;

import cn.tellsea.skeleton.core.tkmybatis.BatchMapper;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;
import tk.mybatis.mapper.common.ids.DeleteByIdsMapper;

/**
 * 自定义通用mapper需要继承的接口
 *
 * @param <T> 不能为空
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
public interface MyMapper<T> extends Mapper<T>, DeleteByIdsMapper<T>, MySqlMapper<T>, BatchMapper<T> {

    // Mapper 基础接口
    // DeleteByIdsMapper 支持批量删除
    // MySqlMapper // 支持批量新增
    // BatchMapper 支持批量更新

}
