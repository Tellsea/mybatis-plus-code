# Mybatis Plus 代码生成器

核心实现功能一键生成 Controller、Service、ServiceImpl、Mapper、Mapper.xml

## 项目特点

- 使用简单，快速上手，直接运行 Main 函数即可
- 定制每个模板，非常的灵活高效，模板位置在templates下
- 集成了 全局异常处理、公共返回结果集处理，使逻辑处理更加清晰
- 集成了TkMybatis，使操作持久层接口更加容易
- 自定义TkMybatis批量更新方法，因为官方没有提供此接口
- 抽离公共控制层、接口层、持久层，使方法调用更加简单

## 使用方法

首先创建数据库，名称为mybatis-plus-code，然后导入sql/mybatis-plus-code.sql 文件

修改数据源配置，根据自己的实际地址修改,配置类位置为：`cn.tellsea.skeleton.core.mybatisplus.MybatisPlusCodeConfig`

```java
dsc.setUrl("jdbc:mysql://localhost:3306/mybatis-plus-code?characterEncoding=utf8");
dsc.setDriverName("com.mysql.jdbc.Driver");
dsc.setUsername("root");
dsc.setPassword("123456");
```

接下来，找到Main方法，使用Java的方式运行即可。启动类路径：`cn.tellsea.skeleton.core.mybatisplus.MybatisPlusCode`