package ${package.ServiceImpl};

import ${package.Entity}.${entity};
import ${package.Service}.${table.serviceName};
import ${superServiceImplClassPackage};
import org.springframework.stereotype.Service;

/**
 * ${table.comment!} Service接口实现类
 *
 * @author ${author}
 * @Description Created on ${date}
 */
@Service
public class ${table.serviceImplName} extends ${superServiceImplClass}<${entity}> implements ${table.serviceName} {

}

