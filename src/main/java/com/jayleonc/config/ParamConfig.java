package com.jayleonc.config;

import org.springframework.stereotype.Repository;


@Repository
public class ParamConfig {

    /*
     * 实现前端上传图片功能
     * Tomcat服务器或是Nginx服务器或是其他服务器设置的静态资源访问地址
     * 这里使用本项目的webapp路径
     */
    private final String img_path = "/Users/jayleonc/imdb/imdb/src/main/webapp/images";

    public String getImgPath() {
        return img_path;
    }

}
