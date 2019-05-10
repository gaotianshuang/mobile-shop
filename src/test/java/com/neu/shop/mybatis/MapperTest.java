package com.neu.shop.mybatis;

import com.neu.shop.dao.AdminMapper;
//import com.neu.shop.dao.DepartmentMapper;
import com.neu.shop.pojo.Admin;
import com.neu.shop.pojo.ShopCart;
import com.neu.shop.pojo.ShopCartExample;
import com.neu.shop.pojo.ShopCartKey;
import com.neu.shop.service.ShopCartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {

    /*@Autowired(required = false)
    DepartmentMapper departmentMapper;*/

    @Autowired(required = false)
    AdminMapper adminMapper;

    @Autowired
    private ShopCartService shopCartService;

    /**
     * 测试DepartmentMapper
     */
    @Test
    public void testInsertSelective() {
        /*//创建SpringIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //从容器中获取Mapper
        DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);*/

        /*System.out.println(bean);*/

        /*System.out.println(departmentMapper);

        departmentMapper.insertSelective(new Department(null, "业务部"));
        departmentMapper.insertSelective(new Department(null, "销售部"));*/

        System.out.println(adminMapper.selectByName(new Admin(null,"root","root")));

    }

    /**
     * 测试DepartmentMapper
     */
    @Test
    public void testDeleteCart() {
        int goodsid = 47;
        int userid = 2;
        shopCartService.deleteByKey(new ShopCartKey(userid, goodsid));
    }

}
