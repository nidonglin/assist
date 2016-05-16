package com.sishuok.es.student.repository;

import com.sishuok.es.common.repository.BaseRepository;
import com.sishuok.es.student.entity.Student;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 * Created with IntelliJ IDEA.
 * User: donglin.ni
 * Date: 2016/5/16
 * Time: 12:05
 * To change this template use File | Settings | File Templates.
 */
public interface StudentRepository extends BaseRepository<Student, Long> {

    @Query(value = "select u from Student u where u.sno = ?1")
    public Student findBySno(String sno);


}
