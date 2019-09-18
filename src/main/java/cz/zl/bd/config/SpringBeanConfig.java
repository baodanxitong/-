package cz.zl.bd.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@AutoConfigureAfter(MyBatisConfig.class)
public class SpringBeanConfig {
	 @Autowired
	    private SqlSessionFactory sqlSessionFactory;

	@Bean	
	public MapperScannerConfigurer  mapperScannerConfigurer() {
		MapperScannerConfigurer msc = new MapperScannerConfigurer();
		msc.setSqlSessionFactoryBeanName("sqlSessionFactory");
		msc.setBasePackage("cz.zl.bd.dao");
		return msc;
	}
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
}
