package cn.tellsea.skeleton.core.mybatisplus;

import com.baomidou.mybatisplus.core.exceptions.MybatisPlusException;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import org.apache.commons.lang3.StringUtils;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Mybatis plus 代码生成器
 *
 * @author Tellsea
 * @Description Created on 2019/7/18
 * Mybatis plus 官网：https://mp.baomidou.com/guide/generator.html
 */
public class CodeGenerator {

    public static void main(String[] args) {
        // 数据库时区问题解决方案
        // SHOW VARIABLES LIKE '%time_zone%'
        // SET GLOBAL time_zone='+8:00'
        String[] arr = {"user", "role"};
        for (int i = 0; i < arr.length; i++) {
            codeGenerator("business", arr[i]);
        }
    }

    public static String scanner(String tip) {
        Scanner scanner = new Scanner(System.in);
        StringBuilder help = new StringBuilder();
        help.append("请输入" + tip + "：");
        System.out.println(help.toString());
        if (scanner.hasNext()) {
            String ipt = scanner.next();
            if (StringUtils.isNotEmpty(ipt)) {
                return ipt;
            }
        }
        throw new MybatisPlusException("请输入正确的" + tip + "！");
    }

    /**
     * 项目路径
     */
    private static final String projectPath = System.getProperty("user.dir");
    /**
     * 模板存放位置
     */
    private static final String templatePathEntity = "/templates/entity.java.ftl";
    private static final String templatePathController = "/templates/controller.java.ftl";
    private static final String templatePathService = "/templates/service.java.ftl";
    private static final String templatePathServiceImpl = "/templates/serviceImpl.java.ftl";
    private static final String templatePathMapper = "/templates/mapper.java.ftl";
    private static final String templatePathMapperXML = "/templates/mapper.xml.ftl";
    private static final String templatePathJsp = "/templates/view.jsp.ftl";
    /**
     * 生成文件位置
     */
    private static final String javaLocation = projectPath + "/src/main/java/cn/tellsea/skeleton/business/";
    private static final String xmlLocation = projectPath + "/src/main/resources/mapper/";
    private static final String pageLocation = projectPath + "/src/main/resources/views/";
    /**
     * 基类路径
     */
    private static final String basePackage = "cn.tellsea.skeleton.core.base";

    /**
     * 代码生成
     *
     * @param model     模块名称
     * @param tableName 表名
     */
    public static void codeGenerator(String model, String tableName) {
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator();
        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        gc.setOutputDir(projectPath + "/src/main/java");
        gc.setAuthor("Tellsea");
        gc.setFileOverride(true);
//        gc.setEnableCache(true);
        gc.setServiceName("%sService");
        /*gc.setServiceName("%sService");*/
        /*gc.setEntityName("%s");
        gc.setMapperName("%sDaoImpl");
        gc.setXmlName("%sDao");
        gc.setServiceName("%sService");
        gc.setServiceImplName("%sServiceImpl");
        gc.setControllerName("%sController");*/
        gc.setFileOverride(false);
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://47.107.171.232:3306/skeleton?characterEncoding=utf8");
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("Root123!@#");
        mpg.setDataSource(dsc);

        // 包配置
        final PackageConfig pc = new PackageConfig();
        pc.setModuleName(model);
        pc.setParent("cn.tellsea.skeleton");
        mpg.setPackageInfo(pc);

        // 自定义配置
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
            }
        };

        // 自定义输出配置，配置会被优先输出
        cfg.setFileOutConfigList(getFileOutConfig());
        mpg.setCfg(cfg);

        // 配置模板
        TemplateConfig templateConfig = new TemplateConfig();
        templateConfig.setXml(null);
        mpg.setTemplate(templateConfig);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        strategy.setSuperEntityClass(basePackage + ".entity.BaseEntity");
        strategy.setSuperControllerClass(basePackage + ".controller.BaseController");
        strategy.setSuperServiceClass(basePackage + ".service.BaseService");
        strategy.setSuperServiceImplClass(basePackage + ".service.impl.BaseServiceImpl");
        strategy.setEntityLombokModel(true);
        strategy.setInclude(tableName);

        strategy.setControllerMappingHyphenStyle(true);
        strategy.setTablePrefix(pc.getModuleName() + "_");
        mpg.setStrategy(strategy);
        mpg.setTemplateEngine(new FreemarkerTemplateEngine());
        mpg.execute();
    }

    /**
     * 自定义输出配置
     *
     * @return
     */
    private static List<FileOutConfig> getFileOutConfig() {
        List<FileOutConfig> focList = new ArrayList<>();

        // Entity
        focList.add(new FileOutConfig(templatePathEntity) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return javaLocation + "/entity/" + tableInfo.getEntityName() + StringPool.DOT_JAVA;
            }
        });

        // Controller
        focList.add(new FileOutConfig(templatePathController) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                tableInfo.setXmlName(convertToLowercase(tableInfo.getEntityName()));
                return javaLocation + "/controller/" + tableInfo.getEntityName() + "Controller" + StringPool.DOT_JAVA;
            }
        });

        // Service
        focList.add(new FileOutConfig(templatePathService) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return javaLocation + "/service/" + tableInfo.getEntityName() + "Service" + StringPool.DOT_JAVA;
            }
        });

        // ServiceImpl
        focList.add(new FileOutConfig(templatePathServiceImpl) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return javaLocation + "/service/impl/" + tableInfo.getEntityName() + "ServiceImpl" + StringPool.DOT_JAVA;
            }
        });

        // Mapper.java
        focList.add(new FileOutConfig(templatePathMapper) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return javaLocation + "/mapper/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_JAVA;
            }
        });

        // Mapper.xml
        focList.add(new FileOutConfig(templatePathMapperXML) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return xmlLocation + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });

        // 生成页面
        focList.add(new FileOutConfig(templatePathJsp) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                String fileName = humpTurnUnderscore(new StringBuffer(convertToLowercase(tableInfo.getEntityName()))).toString();
                return pageLocation + fileName + ".jsp";
            }
        });
        return focList;
    }

    /**
     * 全部转为小写
     *
     * @param oldStr
     * @return
     */
    public static String convertToLowercase(String oldStr) {
        char[] chars = oldStr.toCharArray();
        chars[0] += 32;
        return String.valueOf(chars);
    }

    private static Pattern pattern = Pattern.compile("[A-Z]");

    /**
     * 驼峰转下划线
     *
     * @param str
     * @return
     */
    public static StringBuffer humpTurnUnderscore(StringBuffer str) {
        Matcher matcher = pattern.matcher(str);
        StringBuffer sb = new StringBuffer(str);
        if (matcher.find()) {
            sb = new StringBuffer();
            //将当前匹配子串替换为指定字符串，并且将替换后的子串以及其之前到上次匹配子串之后的字符串段添加到一个StringBuffer对象里。
            //正则之前的字符和被替换的字符
            matcher.appendReplacement(sb, "_" + matcher.group(0).toLowerCase());
            //把之后的也添加到StringBuffer对象里
            matcher.appendTail(sb);
        } else {
            return sb;
        }
        return humpTurnUnderscore(sb);
    }
}
