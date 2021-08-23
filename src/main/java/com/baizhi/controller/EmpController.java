package com.baizhi.controller;

import com.baizhi.entity.Emp;
import com.baizhi.service.EmpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * (Emp)表控制层
 *
 * @author gf
 * @since 2021-07-05 18:41:43
 */
@Controller
@RequestMapping("emp")
public class EmpController {
    private static final Logger log = LoggerFactory.getLogger(EmpController.class);
    /**
     * 服务对象
     */
    @Resource
    private EmpService empService;

    /**
     * 通过主键查询单条数据
     */

    @RequestMapping("insert")
    public String insert(Emp emp){
        empService.insert(emp);
        return "redirect:/emp/selectAll";
    }

    @RequestMapping("delete")
    public String delete(String id){
        empService.deleteById(id);
        return "redirect:/emp/selectAll";
    }

    @RequestMapping("update")
    public String update(Emp emp){
        empService.update(emp);
        return "redirect:/emp/selectAll";
    }

    @RequestMapping("selectOne")
    public String selectOne(String id,HttpServletRequest request) {
        Emp emp = empService.queryById(id);
        request.setAttribute("emp",emp);
        return "updateEmp";
    }

    @RequestMapping("selectAll")
    public String selectAll(HttpServletRequest request){
        List<Emp> emps = empService.queryAllByLimit(0, Integer.MAX_VALUE);
        log.info("查询到的用户列表: {}",emps);
        request.setAttribute("emps", emps);
        return "emplist";
    }

}
