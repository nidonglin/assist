package com.sishuok.es.teacher.repository;

import com.sishuok.es.common.repository.BaseRepository;
import com.sishuok.es.teacher.entity.Teacher;
import org.springframework.data.jpa.repository.Query;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/17
 * Time: 12:58
 * To change this template use File | Settings | File Templates.
 */
public interface TeacherRepository extends BaseRepository<Teacher, Long> {
    @Query(value = "select t from Teacher t where t.workno = ?1")
    public Teacher findByWorkno(String workno);
}
