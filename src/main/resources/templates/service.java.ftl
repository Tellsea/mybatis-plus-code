package ${package.Service};

import ${package.Entity}.${entity};
import ${superServiceClassPackage};
import org.springframework.stereotype.Service;

/**
 * ${table.comment!} Service接口
 *
 * @author ${author}
 * @Description Created on ${date}
 */
@Service
public interface ${table.serviceName} extends ${superServiceClass}<${entity}> {

}
