package com.jayleonc.dao;

import com.jayleonc.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProductDao {

    /**
     * 查询所有的图片
     * @return
     */
    @Select("select pid, pimage from product")
    List<Product> list();

    @Insert("insert into product(pimage) values(#{pimage})")
    Integer save(Product product);
}
