package cn.tellsea.skeleton.core.common.exception;

import cn.tellsea.skeleton.core.common.enums.StatusEnums;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 全局异常
 *
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class SkeletonException extends RuntimeException {

    private StatusEnums statusEnums;
}
