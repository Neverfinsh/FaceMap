package com.system.mapper;

import java.util.List;

import com.system.entity.ShareCenter;


/****
 * 足迹中心
 * 
 * @author Lw
 * 2017年4月8日
 * TODO
 */

public interface ShareCenterMapper {
    public List<ShareCenter> findallShare();// 所有的的数据
    public List<ShareCenter> findfribyId(int userid);// 所有的的数据
    

}
