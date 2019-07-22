package cn.tellsea.skeleton.core.common.dto;

import cn.tellsea.skeleton.core.common.enums.StatusEnums;
import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * 全局返回结果集
 *
 * @author Tellsea
 * @Description Created on 2019/7/13
 */
@Data
@AllArgsConstructor
public class ResponseResult {

    private Integer code;
    private String message;
    private Object data;

    public ResponseResult(StatusEnums enums) {
        this.code = enums.getCode();
        this.message = enums.getInfo();
    }

    public ResponseResult(StatusEnums enums, Object data) {
        this.code = enums.getCode();
        this.message = enums.getInfo();
        this.data = data;
    }

    public ResponseResult(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public static ResponseResult success() {
        return new ResponseResult(StatusEnums.SUCCESS);
    }

    public static ResponseResult success(Object data) {
        return new ResponseResult(StatusEnums.SUCCESS, data);
    }

    public static ResponseResult error() {
        return new ResponseResult(StatusEnums.SERVER_ERROR);
    }

    public static ResponseResult error(StatusEnums enums) {
        return new ResponseResult(enums.getCode(), enums.getInfo());
    }

    public static ResponseResult error(StatusEnums enums, Object data) {
        return new ResponseResult(enums.getCode(), enums.getInfo(), data);
    }
}
