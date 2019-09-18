package cz.zl.bd.config;

import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;





@Configuration
@PropertySource(value={"classpath:conn.properties"})
public class MyBatisConfig {
	@Value(value = "${mydriver}")//配置文件中读不到时设定默认值
    private String driver;
    @Value(value = "${myurl}")
    private String url;
    @Value(value = "${myuser}")
    private String username;
    @Value(value = "${mypwd}")
    private String pwd;
    
    @Autowired
    private BasicDataSource dataSource;
    
    @Bean
    public BasicDataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName(driver);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(pwd);
        return dataSource;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        sqlSessionFactory.setDataSource(dataSource);
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
sqlSessionFactory.setMapperLocations(resolver.getResources("classpath:mybatis/mapper/pojo/*.xml"));//这里引入所有的实体映射文件
        return sqlSessionFactory.getObject();
    }
    
   


}	
