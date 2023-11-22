package com.smart.module.sys.repository;

import com.smart.module.sys.entity.SysConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * sys_user Repository
 * Created by dgt
 * Sun Oct 27 13:03:00 CST 2019
*/ 
@Repository 
public interface SysConfigRepository extends JpaRepository<SysConfig, Long> {

}

