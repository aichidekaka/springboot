package com.baizhi.controller;

import com.baizhi.entity.City;
import com.baizhi.entity.Emp;
import com.baizhi.mapper.CityMapper;
import com.baizhi.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/emp")
public class empcontroller {
    @Autowired
    EmpMapper empMapper;
    @Autowired
    CityMapper cityMapper;

    @RequestMapping("/queryAll")
    public String queryAll(HttpSession session) {
        List<Emp> list = empMapper.selectAll();
        session.setAttribute("list", list);
        return "forward:/ShowAllView.jsp";
    }


    @RequestMapping("/Insert")


    public String Insert(Emp emp) {
        System.out.println(emp);
        empMapper.insert(emp);
        return "redirect:/emp/queryAll.do";
    }

    @RequestMapping("/queryAllCity")
    public City queryAllCity() {
        City city = cityMapper.selectByPrimaryKey(1L);

        return city;
    }


}
