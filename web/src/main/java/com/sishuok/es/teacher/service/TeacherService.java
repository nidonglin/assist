package com.sishuok.es.teacher.service;

import com.sishuok.es.common.service.BaseService;
import com.sishuok.es.showcase.sample.entity.Sample;
import com.sishuok.es.showcase.sample.repository.SampleRepository;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.service.UserService;
import com.sishuok.es.teacher.entity.Teacher;
import com.sishuok.es.teacher.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 13:32
 * To change this template use File | Settings | File Templates.
 */
@Service
public class TeacherService extends BaseService<Teacher, Long> {
    private TeacherRepository getTeacherRepository() {
        return (TeacherRepository) baseRepository;
    }
    @Autowired
    private UserService userService;

    public Teacher findByWorkno(String workno) {
        return getTeacherRepository().findByWorkno(workno);
    }

    public void create(Teacher teacher){
        if(teacher!=null&&teacher.getId()!=null){
            update(teacher);
        }else{
            save(teacher);
            User user=new User();
            user.setUsername(teacher.getWorkno());
            user.setPassword("123456");
            userService.save(user);
        }
    }
}
