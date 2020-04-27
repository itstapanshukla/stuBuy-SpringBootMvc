package com.service.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.imageio.stream.ImageInputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/img")
public class RestControllerImg {
	@GetMapping("/display/{imgname}")
	public void displayImage(@PathVariable("imgname") String imgname, HttpServletResponse httpServletResponse)
			throws Exception {
		InputStream inputStream = new FileInputStream(
				new File("C:\\Users\\Tapan Shukla\\Desktop\\images\\" + imgname));
		int i = 0;
		while ((i = inputStream.read()) != -1) {
			httpServletResponse.getWriter().write(i);
		}

	}

	@GetMapping("/details/{imgname}")
	public void productDeatils(@PathVariable("imgname") String imgname, HttpServletResponse httpServletResponse)
			throws Exception {
		InputStream inputStream = new FileInputStream(
				new File("C:\\Users\\Tapan Shukla\\Desktop\\images\\" + imgname));
		int i = 0;
		while ((i = inputStream.read()) != -1) {
			httpServletResponse.getWriter().write(i);
		}

	}

}
