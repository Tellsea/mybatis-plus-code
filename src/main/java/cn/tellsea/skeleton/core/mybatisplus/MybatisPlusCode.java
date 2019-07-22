package cn.tellsea.skeleton.core.mybatisplus;

import java.util.Scanner;

/**
 * 代码生成器
 *
 * @author Tellsea
 * @Description Created on 2019/7/22
 */
public class MybatisPlusCode {

    public static void main(String[] args) {
        // 数据库时区问题解决方案
        // SHOW VARIABLES LIKE '%time_zone%'
        // SET GLOBAL time_zone='+8:00'
        System.out.println("请输入模块名：");
        Scanner scanner = new Scanner(System.in);
        String modelName = scanner.next();
        System.out.println("请输入表名：");
        String tableName = scanner.next();
        MybatisPlusCodeConfig.codeGenerator(modelName, tableName);
    }
}
