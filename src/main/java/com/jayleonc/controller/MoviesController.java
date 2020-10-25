package com.jayleonc.controller;

import com.jayleonc.config.ParamConfig;
import com.jayleonc.domain.Genre;
import com.jayleonc.domain.Movie;
import com.jayleonc.service.IGenreService;
import com.jayleonc.service.IMgService;
import com.jayleonc.service.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/movies")
public class MoviesController {

    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private IGenreService iGenreService;

    @Autowired
    private IMgService iMgService;

    @Autowired
    private ParamConfig paramConfig;

    @RequestMapping("/findAll")
    public @ResponseBody
    List<Movie> findAll() {
        return iMoviesService.findAll();
    }


    @RequestMapping("/findAllGenre")
    public @ResponseBody
    List<Genre> findAllGenre() {
        return iGenreService.findAll();
    }


    @RequestMapping("/findById")
    public @ResponseBody
    Movie findById(HttpServletRequest request) {
        System.out.println(1);
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(2);
            Movie movie = iMoviesService.findById(id);
            System.out.println(3);
            return movie;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping("deleteMovie")
    public @ResponseBody
    Boolean deleteMovie(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        iMoviesService.deleteMovie(id);
        return true;
    }

    @RequestMapping("updateMovie")
    public @ResponseBody
    Boolean updateMovie(HttpServletRequest request) {
        Movie movie = iMoviesService.makeMovie(request);
        iMoviesService.updateMovie(movie);
        return true;
    }

    // 上传文件
    @RequestMapping("fileupload")
    public @ResponseBody
    Boolean fileupload(HttpServletRequest request, @RequestParam("file") MultipartFile upload) {

        Movie movie = iMoviesService.makeMovie(request);
        System.out.println(movie);
        try {
            iMoviesService.addMovie(movie);
        } catch (Exception e) {
            return false;
        }
        try {
            String path = paramConfig.getImgPath();
            File file = new File(path);
            if (!file.exists()) file.mkdirs();
            String origin = upload.getOriginalFilename();
            String filename = movie.getName().replaceAll(" ", "") + "." + origin.substring(origin.length() - 3);
            System.out.println(filename);

            upload.transferTo(new File(path, filename));
        } catch (IOException e) {
            iMoviesService.deleteMovie(movie.getId());
            iMgService.deleteByMovieId(movie.getId());
        }
        return true;
    }

}
