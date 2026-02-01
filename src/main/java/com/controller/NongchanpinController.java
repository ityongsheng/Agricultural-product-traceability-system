package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import java.lang.*;
import java.math.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import com.utils.ValidatorUtils;
import com.utils.DeSensUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.NongchanpinEntity;
import com.entity.view.NongchanpinView;

import com.service.NongchanpinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import cn.hutool.extra.qrcode.QrCodeUtil;
import cn.hutool.extra.qrcode.QrConfig;
import java.io.IOException;

/**
 * 农产品
 * 后端接口
 * 
 * @author
 * @email
 * @date 2025-03-23 16:42:55
 */
@RestController
@RequestMapping("/nongchanpin")
public class NongchanpinController {
    @Autowired
    private NongchanpinService nongchanpinService;

    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, NongchanpinEntity nongchanpin,
            HttpServletRequest request) {
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("jingxiaoshang")) {
            nongchanpin.setJingxiaoshanghao((String) request.getSession().getAttribute("username"));
        }
        // 设置查询条件
        EntityWrapper<NongchanpinEntity> ew = new EntityWrapper<NongchanpinEntity>();

        // 查询结果
        PageUtils page = nongchanpinService.queryPage(params,
                MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongchanpin), params), params));
        Map<String, String> deSens = new HashMap<>();
        // 给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page, deSens);
        return R.ok().put("data", page);
    }

    /**
     * 前台列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, NongchanpinEntity nongchanpin,
            HttpServletRequest request) {
        // 设置查询条件
        EntityWrapper<NongchanpinEntity> ew = new EntityWrapper<NongchanpinEntity>();

        // 查询结果
        PageUtils page = nongchanpinService.queryPage(params,
                MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongchanpin), params), params));
        Map<String, String> deSens = new HashMap<>();
        // 给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page, deSens);
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(NongchanpinEntity nongchanpin) {
        EntityWrapper<NongchanpinEntity> ew = new EntityWrapper<NongchanpinEntity>();
        ew.allEq(MPUtil.allEQMapPre(nongchanpin, "nongchanpin"));
        return R.ok().put("data", nongchanpinService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(NongchanpinEntity nongchanpin) {
        EntityWrapper<NongchanpinEntity> ew = new EntityWrapper<NongchanpinEntity>();
        ew.allEq(MPUtil.allEQMapPre(nongchanpin, "nongchanpin"));
        NongchanpinView nongchanpinView = nongchanpinService.selectView(ew);
        return R.ok("查询农产品成功").put("data", nongchanpinView);
    }

    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        NongchanpinEntity nongchanpin = nongchanpinService.selectById(id);
        Map<String, String> deSens = new HashMap<>();
        // 给需要脱敏的字段脱敏
        DeSensUtil.desensitize(nongchanpin, deSens);

        // 生成二维码
        try {
            StringBuilder content = new StringBuilder();
            content.append("溯源码: ").append(nongchanpin.getSuyuanma() != null ? nongchanpin.getSuyuanma() : "")
                    .append("\n");
            content.append("产品名称: ")
                    .append(nongchanpin.getChanpinmingcheng() != null ? nongchanpin.getChanpinmingcheng() : "")
                    .append("\n");
            content.append("产品品种: ")
                    .append(nongchanpin.getChanpinpinzhong() != null ? nongchanpin.getChanpinpinzhong() : "")
                    .append("\n");
            content.append("经销商名: ")
                    .append(nongchanpin.getJingxiaoshangming() != null ? nongchanpin.getJingxiaoshangming() : "")
                    .append("\n");
            content.append("图片: ").append(nongchanpin.getTupian() != null ? nongchanpin.getTupian() : "").append("\n");
            content.append("加工企业: ").append(nongchanpin.getJiagongqiye() != null ? nongchanpin.getJiagongqiye() : "")
                    .append("\n");
            content.append("生产日期: ")
                    .append(nongchanpin.getShengchanriqi() != null
                            ? new SimpleDateFormat("yyyy-MM-dd").format(nongchanpin.getShengchanriqi())
                            : "")
                    .append("\n");
            content.append("经销商号: ")
                    .append(nongchanpin.getJingxiaoshanghao() != null ? nongchanpin.getJingxiaoshanghao() : "")
                    .append("\n");
            content.append("价格: ").append(nongchanpin.getJiage() != null ? nongchanpin.getJiage() : "").append("\n");
            content.append("数量: ").append(nongchanpin.getShuliang() != null ? nongchanpin.getShuliang() : "")
                    .append("\n");
            content.append("加工工艺: ")
                    .append(nongchanpin.getJiagonggongyi() != null ? nongchanpin.getJiagonggongyi() : "").append("\n");
            content.append("加工流程: ")
                    .append(nongchanpin.getJiagongliucheng() != null ? nongchanpin.getJiagongliucheng() : "")
                    .append("\n");
            content.append("添加剂: ").append(nongchanpin.getTianjiaji() != null ? nongchanpin.getTianjiaji() : "");

            String base64 = QrCodeUtil.generateAsBase64(content.toString(), new QrConfig(300, 300), "png");
            // 避免重复添加前缀
            if (base64 != null && base64.startsWith("data:image")) {
                nongchanpin.setErweima(base64);
            } else {
                nongchanpin.setErweima("data:image/png;base64," + (base64 != null ? base64 : ""));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return R.ok().put("data", nongchanpin);
    }

    /**
     * 前台详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        NongchanpinEntity nongchanpin = nongchanpinService.selectById(id);
        Map<String, String> deSens = new HashMap<>();
        // 给需要脱敏的字段脱敏
        DeSensUtil.desensitize(nongchanpin, deSens);
        return R.ok().put("data", nongchanpin);
    }

    /**
     * 后台保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody NongchanpinEntity nongchanpin, HttpServletRequest request) {
        // ValidatorUtils.validateEntity(nongchanpin);
        nongchanpinService.insert(nongchanpin);
        return R.ok().put("data", nongchanpin.getId());
    }

    /**
     * 前台保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody NongchanpinEntity nongchanpin, HttpServletRequest request) {
        // ValidatorUtils.validateEntity(nongchanpin);
        nongchanpinService.insert(nongchanpin);
        return R.ok().put("data", nongchanpin.getId());
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody NongchanpinEntity nongchanpin, HttpServletRequest request) {
        // ValidatorUtils.validateEntity(nongchanpin);
        // 全部更新
        nongchanpinService.updateById(nongchanpin);
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        nongchanpinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

}
