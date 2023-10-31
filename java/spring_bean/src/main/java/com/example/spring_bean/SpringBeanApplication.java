package com.example.spring_bean;

import com.example.spring_bean.config.BeanConfig;
import com.example.spring_bean.entity.Department;
import com.example.spring_bean.entity.Staff;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@SpringBootApplication
public class SpringBeanApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBeanApplication.class, args);

        // using bean factory
        DefaultListableBeanFactory factory = new DefaultListableBeanFactory();
        XmlBeanDefinitionReader reader = new XmlBeanDefinitionReader(factory);
        reader.loadBeanDefinitions("bean.xml");
        Staff staff01 = (Staff) factory.getBean("staff01");
        System.err.println(staff01);

        // using application context
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        Staff staff02 = (Staff)context.getBean("staff02");
        System.err.println(staff02);

        Staff staff03 = (Staff)context.getBean("staff03");
        System.err.println(staff03.getDepartment());

        System.err.println("get all staff in department");
        Department hr = (Department) context.getBean("hr");
        for (Staff s : hr.getStaffs()) {
            System.err.println(s);
        }


        // bean config
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
        ctx.register(BeanConfig.class);
        ctx.refresh();
        Staff staff04 = (Staff) ctx.getBean("staff04");
        System.out.println(staff04);

    }

}
