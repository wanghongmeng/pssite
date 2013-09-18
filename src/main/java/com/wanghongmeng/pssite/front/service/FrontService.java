package com.wanghongmeng.pssite.front.service;

import com.wanghongmeng.pssite.front.dao.FrontDao;
import com.wanghongmeng.pssite.front.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-8-6
 * Time: 下午2:10
 * To change this template use File | Settings | File Templates.
 */
@Service
public class FrontService {
    @Autowired
    private FrontDao frontDao;

    public List<Person> queryPerson(){
        return frontDao.queryPerson();
    }
}