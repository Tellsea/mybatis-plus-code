package cn.tellsea.skeleton.core.tkmybatis;

import tk.mybatis.mapper.annotation.RegisterMapper;

/**
 * 批量操作接口
 *
 * @param <T> 不能为空
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
@RegisterMapper
public interface BatchMapper<T> extends UpdateBatchByPrimaryKeySelectiveMapper<T> {
}
