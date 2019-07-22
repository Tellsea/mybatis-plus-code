
import ${package.Entity}.${entity};
import com.zyxx.base.BaseDao;
import org.springframework.stereotype.Repository;
import java.util.List;
import com.zyxx.utils.ZyxxUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

/**
 * ${table.comment!} 服务实现类
 *
 * @author ${author}
 * @date ${date}
 */
@Repository
public class ${table.mapperName} extends BaseDao<${entity}> {

    public List<${entity}> listData(${entity} e) {
        StringBuffer sql = new StringBuffer();
        sql.append("select <#list table.fields as field><#if field_has_next >${field.name},</#if><#if !field_has_next >${field.name}</#if></#list> from ${table.name}");
        sql.append(" where 1 = 1 ");
        if (null != StringUtils.trimToNull(e.getSort()) && null != StringUtils.trimToNull(e.getSort())) {
            String sort = ZyxxUtil.change(e.getSort());
            sql.append(" order by a.").append(sort).append(" ").append(e.getOrder());
        } else {
            sql.append(" order by a.create_time desc ");
        }
        sql.append(" limit ?,? ");
       jdbcTemplate.query(sql.toString(), new Object[]{e.getOffset(), e.getLimit()}, new BeanPropertyRowMapper<>(${entity}.class));
    }

    public int countData(${entity} e) {
        StringBuffer sql = new StringBuffer();
        sql.append("select count(*) from ${table.name}");
        return jdbcTemplate.queryForObject(sql.toString(), Integer.class);
    }
}

