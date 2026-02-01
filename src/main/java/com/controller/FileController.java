package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.ConfigEntity;
import com.entity.EIException;
import com.service.ConfigService;
import com.utils.R;

/**
 * 上传文件映射表
 */
@RestController
@RequestMapping("file")
@SuppressWarnings({"unchecked","rawtypes"})
public class FileController {

    @Autowired
    private ConfigService configService;

    /**
     * 上传文件
     */
    @RequestMapping("/upload")
    @IgnoreAuth
    public R upload(@RequestParam("file") MultipartFile file, String type) throws Exception {
        if (file.isEmpty()) {
            throw new EIException("上传文件不能为空");
        }

        String fileExt = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1);

        // 1. 获取项目根目录 (例如：.../springbootu4nad998)
        String projectPath = System.getProperty("user.dir");

        // 2. 【核心修正】强制拼接到 src/main/resources/static/upload
        // 只有存到这里，您的拦截器配置 (InterceptorConfig) 才能读取到！
        File upload = new File(projectPath + "/src/main/resources/static/upload/");

        // 打印一下路径，方便您在控制台确认 (调试用)
        System.err.println("【上传调试】图片即将保存到: " + upload.getAbsolutePath());

        if (!upload.exists()) {
            upload.mkdirs();
        }

        String fileName = new Date().getTime() + "." + fileExt;
        if (StringUtils.isNotBlank(type) && type.contains("_template")) {
            fileName = type + "." + fileExt;
            new File(upload.getAbsolutePath() + "/" + fileName).deleteOnExit();
        }

        File dest = new File(upload.getAbsolutePath() + "/" + fileName);
        file.transferTo(dest);

        if (StringUtils.isNotBlank(type) && type.equals("1")) {
            ConfigEntity configEntity = configService.selectOne(new EntityWrapper<ConfigEntity>().eq("name", "faceFile"));
            if (configEntity == null) {
                configEntity = new ConfigEntity();
                configEntity.setName("faceFile");
                configEntity.setValue(fileName);
            } else {
                configEntity.setValue(fileName);
            }
            configService.insertOrUpdate(configEntity);
        }

        return R.ok().put("file", fileName);
    }

    /**
     * 下载文件
     */
    @IgnoreAuth
    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(@RequestParam String fileName) {
        try {
            // 下载逻辑也要同步修改路径
            String projectPath = System.getProperty("user.dir");
            File upload = new File(projectPath + "/src/main/resources/static/upload/");

            File file = new File(upload.getAbsolutePath() + "/" + fileName);
            if (file.exists()) {
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
                headers.setContentDispositionFormData("attachment", fileName);
                return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}