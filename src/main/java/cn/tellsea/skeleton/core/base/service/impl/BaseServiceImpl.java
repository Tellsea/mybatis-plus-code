package cn.tellsea.skeleton.core.base.service.impl;

import cn.tellsea.skeleton.core.base.mapper.MyMapper;
import cn.tellsea.skeleton.core.base.service.BaseService;
import cn.tellsea.skeleton.core.common.enums.StatusEnums;
import cn.tellsea.skeleton.core.common.exception.SkeletonException;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * 基类接口实现类
 *
 * @param <T> 不能为空
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
public class BaseServiceImpl<T> implements BaseService<T> {

    @Autowired
    public MyMapper<T> baseMapper;

    @Override
    public void insert(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.insert(record);
    }

    @Override
    public void insertSelective(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.insertSelective(record);
    }

    @Override
    public void insertList(List<? extends T> recordList) {
        if (CollectionUtils.isEmpty(recordList)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.insertList((List<T>) recordList);
    }

    @Override
    public void insertUseGeneratedKeys(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.insertUseGeneratedKeys(record);
    }

    @Override
    public void delete(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.delete(record);
    }

    @Override
    public void deleteByPrimaryKey(Object key) {
        if (ObjectUtils.isEmpty(key)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.deleteByPrimaryKey(key);
    }

    @Override
    public void deleteByIds(String ids) {
        if (StringUtils.isEmpty(ids)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.deleteByIds(ids);
    }

    @Override
    public void deleteByExample(Object example) {
        if (ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.deleteByExample(example);
    }

    @Override
    public void updateByPrimaryKey(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.updateByPrimaryKey(record);
    }

    @Override
    public void updateByPrimaryKeySelective(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public void updateByExample(T record, Object example) {
        if (record == null || ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.updateByExample(record, example);
    }

    @Override
    public void updateByExampleSelective(T record, Object example) {
        if (record == null || ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.updateByExampleSelective(record, example);
    }

    @Override
    public void updateBatchByPrimaryKeySelective(List<? extends T> recordList) {
        if (CollectionUtils.isEmpty(recordList)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        baseMapper.updateBatchByPrimaryKeySelective(recordList);
    }

    @Override
    public T selectByPrimaryKey(Object key) {
        if (ObjectUtils.isEmpty(key)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectByPrimaryKey(key);
    }

    @Override
    public T selectOne(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectOne(record);
    }

    @Override
    public T selectOneByExample(Object example) {
        if (ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectOneByExample(example);
    }

    @Override
    public List<T> select(T record) {
        if (record == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.select(record);
    }

    @Override
    public List<T> selectAll() {
        return baseMapper.selectAll();
    }

    @Override
    public List<T> selectByExample(Object example) {
        if (ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectByExample(example);
    }

    @Override
    public List<T> selectByRowBounds(T record, RowBounds rowBounds) {
        if (record == null || rowBounds == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectByRowBounds(record, rowBounds);
    }

    @Override
    public List<T> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
        if (ObjectUtils.isEmpty(example) || rowBounds == null) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectByExampleAndRowBounds(example, rowBounds);
    }

    @Override
    public int selectCount(T record) {
        if (ObjectUtils.isEmpty(record)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectCount(record);
    }

    @Override
    public int selectCountByExample(Object example) {
        if (ObjectUtils.isEmpty(example)) {
            throw new SkeletonException(StatusEnums.PARAM_NOT_NULL);
        }
        return baseMapper.selectCountByExample(example);
    }
}
