package org.zt.ssmm.dao;

import java.util.List;

import org.zt.ssmm.core.Ip;
import org.zt.ssmm.core.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);
    int insert2(User role);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> getAllUsers();
    
    List<User> getAllUsersWithRole();
    int selectUser(String name);
    int insertIpinfo(Ip info);
    int insertBlackIp(Ip info);
    User selectByNamePWD(User role);
    int selectIpOneSecond(Ip info);
}