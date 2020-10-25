package com.jayleonc.service;

import com.jayleonc.domain.Product;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ProductService {
    List<Product> list();

    String save(MultipartFile file, Product product, ModelMap map) throws IOException;
}
